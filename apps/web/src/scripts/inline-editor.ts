/**
 * InlineEditor - Wikipedia-style inline editing for artist pages
 *
 * Manages edit mode, field editing, and API communication.
 * Works with the PasswordDialog for authentication.
 */

declare global {
  interface Window {
    PasswordDialog: {
      getInstance(): { promptForPassword(): Promise<boolean> };
      isAuthenticated(): boolean;
      getToken(): string | null;
      clearAuth(): void;
    };
    InlineEditor: typeof InlineEditor;
  }
}

interface SaveResult {
  success: boolean;
  field?: string;
  newValue?: unknown;
  previousValue?: unknown;
  error?: string;
}

export class InlineEditor {
  private artistSlug: string;
  private infobox: HTMLElement | null = null;
  private isEditing: boolean = false;
  private pendingChanges: Map<string, unknown> = new Map();
  private originalValues: Map<string, unknown> = new Map();

  constructor(artistSlug: string) {
    this.artistSlug = artistSlug;
    this.init();
  }

  private init() {
    if (document.readyState === 'loading') {
      document.addEventListener('DOMContentLoaded', () => this.setup());
    } else {
      this.setup();
    }
  }

  private setup() {
    this.infobox = document.querySelector('.infobox');
    if (!this.infobox) {
      console.warn('[InlineEditor] Infobox not found');
      return;
    }

    // Store original values from data attributes
    this.storeOriginalValues();

    // Bind edit button
    const editBtn = this.infobox.querySelector('.edit-toggle-btn');
    if (editBtn) {
      editBtn.addEventListener('click', () => this.toggleEditMode());
    }

    // Bind keyboard shortcuts
    document.addEventListener('keydown', (e) => {
      // Cmd/Ctrl + E to toggle edit mode
      if ((e.metaKey || e.ctrlKey) && e.key === 'e') {
        e.preventDefault();
        this.toggleEditMode();
      }

      if (!this.isEditing) return;

      // Escape to cancel
      if (e.key === 'Escape') {
        e.preventDefault();
        this.cancelChanges();
      }

      // Cmd/Ctrl + S to save
      if ((e.metaKey || e.ctrlKey) && e.key === 's') {
        e.preventDefault();
        this.saveAllChanges();
      }
    });

    console.log('[InlineEditor] Initialized for artist:', this.artistSlug);
  }

  private storeOriginalValues() {
    const editableFields = this.infobox?.querySelectorAll('[data-editable]') || [];
    editableFields.forEach((field) => {
      const fieldName = field.getAttribute('data-editable');
      const rawValue = field.getAttribute('data-value');
      if (!fieldName) return;

      try {
        // Try to parse as JSON for arrays/objects
        const value = rawValue ? JSON.parse(rawValue) : null;
        this.originalValues.set(fieldName, value);
      } catch {
        // Plain string value
        this.originalValues.set(fieldName, rawValue);
      }
    });
  }

  async toggleEditMode() {
    if (this.isEditing) {
      this.exitEditMode();
      return;
    }

    // Check authentication
    const PasswordDialog = window.PasswordDialog;
    if (!PasswordDialog) {
      console.error('[InlineEditor] PasswordDialog not loaded');
      return;
    }

    if (!PasswordDialog.isAuthenticated()) {
      const dialog = PasswordDialog.getInstance();
      const authenticated = await dialog.promptForPassword();
      if (!authenticated) {
        return;
      }
    }

    this.enterEditMode();
  }

  private enterEditMode() {
    if (!this.infobox) return;

    this.isEditing = true;
    this.pendingChanges.clear();
    this.infobox.classList.add('is-editing');
    document.body.classList.add('edit-mode-active');

    // Show edit controls on editable fields
    const editableFields = this.infobox.querySelectorAll('[data-editable]');
    editableFields.forEach((field) => {
      field.classList.add('editable-active');
      this.setupFieldEditor(field as HTMLElement);
    });

    // Update edit button
    const editBtn = this.infobox.querySelector('.edit-toggle-btn');
    if (editBtn) {
      editBtn.classList.add('is-active');
      const btnText = editBtn.querySelector('.edit-btn-text');
      if (btnText) btnText.textContent = 'Exit Edit Mode';
    }

    // Show save/cancel bar
    const actionBar = this.infobox.querySelector('.edit-actions');
    if (actionBar) {
      (actionBar as HTMLElement).style.display = 'flex';
    }

    this.showToast('Edit mode enabled. Press Esc to cancel, Cmd+S to save.', 'info');
  }

  private exitEditMode() {
    if (!this.infobox) return;

    this.isEditing = false;
    this.infobox.classList.remove('is-editing');
    document.body.classList.remove('edit-mode-active');

    // Hide edit controls
    const editableFields = this.infobox.querySelectorAll('[data-editable]');
    editableFields.forEach((field) => {
      field.classList.remove('editable-active');
      this.teardownFieldEditor(field as HTMLElement);
    });

    // Update edit button
    const editBtn = this.infobox.querySelector('.edit-toggle-btn');
    if (editBtn) {
      editBtn.classList.remove('is-active');
      const btnText = editBtn.querySelector('.edit-btn-text');
      if (btnText) btnText.textContent = 'Edit';
    }

    // Hide save/cancel bar
    const actionBar = this.infobox.querySelector('.edit-actions');
    if (actionBar) {
      (actionBar as HTMLElement).style.display = 'none';
    }
  }

  private setupFieldEditor(field: HTMLElement) {
    const fieldName = field.getAttribute('data-editable');
    const fieldType = field.getAttribute('data-type');
    if (!fieldName || !fieldType) return;

    const viewEl = field.querySelector('.field-view');
    const editEl = field.querySelector('.field-edit');

    if (viewEl) (viewEl as HTMLElement).style.display = 'none';
    if (editEl) {
      (editEl as HTMLElement).style.display = 'block';
      this.initializeFieldInput(field, fieldName, fieldType);
    }
  }

  private teardownFieldEditor(field: HTMLElement) {
    const viewEl = field.querySelector('.field-view');
    const editEl = field.querySelector('.field-edit');

    if (viewEl) (viewEl as HTMLElement).style.display = '';
    if (editEl) (editEl as HTMLElement).style.display = 'none';
  }

  private initializeFieldInput(field: HTMLElement, fieldName: string, fieldType: string) {
    const editEl = field.querySelector('.field-edit');
    if (!editEl) return;

    const originalValue = this.originalValues.get(fieldName);

    switch (fieldType) {
      case 'tags':
        this.initTagEditor(editEl as HTMLElement, fieldName, originalValue as string[]);
        break;
      case 'text':
      case 'date':
        this.initTextInput(editEl as HTMLElement, fieldName, originalValue as string);
        break;
      case 'select':
        this.initSelectInput(editEl as HTMLElement, fieldName, originalValue as string);
        break;
      case 'boolean':
        this.initToggleInput(editEl as HTMLElement, fieldName, originalValue as boolean);
        break;
    }
  }

  private initTagEditor(container: HTMLElement, fieldName: string, values: string[]) {
    const tagList = container.querySelector('.tag-editor-list');
    const input = container.querySelector('.tag-input') as HTMLInputElement;
    if (!tagList || !input) return;

    // Populate existing tags
    tagList.innerHTML = '';
    (values || []).forEach((tag) => {
      this.addTagChip(tagList as HTMLElement, fieldName, tag);
    });

    // Handle new tag input
    input.addEventListener('keydown', (e) => {
      if (e.key === 'Enter' || e.key === ',') {
        e.preventDefault();
        const value = input.value.trim();
        if (value) {
          this.addTagChip(tagList as HTMLElement, fieldName, value);
          this.updatePendingTags(fieldName, tagList as HTMLElement);
          input.value = '';
        }
      } else if (e.key === 'Backspace' && !input.value) {
        const lastTag = tagList.querySelector('.tag-chip:last-child');
        if (lastTag) {
          lastTag.remove();
          this.updatePendingTags(fieldName, tagList as HTMLElement);
        }
      }
    });
  }

  private addTagChip(container: HTMLElement, fieldName: string, value: string) {
    const chip = document.createElement('span');
    chip.className = 'tag-chip tag-chip--editable';
    chip.setAttribute('data-value', value);
    chip.innerHTML = `
      ${this.escapeHtml(value)}
      <button type="button" class="tag-chip__remove" aria-label="Remove ${this.escapeHtml(value)}">×</button>
    `;

    chip.querySelector('.tag-chip__remove')?.addEventListener('click', (e) => {
      e.stopPropagation();
      chip.remove();
      this.updatePendingTags(fieldName, container);
    });

    container.appendChild(chip);
  }

  private updatePendingTags(fieldName: string, container: HTMLElement) {
    const tags = Array.from(container.querySelectorAll('.tag-chip')).map(
      (chip) => chip.getAttribute('data-value') || ''
    );
    this.pendingChanges.set(fieldName, tags);
  }

  private initTextInput(container: HTMLElement, fieldName: string, value: string) {
    const input = container.querySelector('input') as HTMLInputElement;
    if (!input) return;

    input.value = value || '';

    input.addEventListener('input', () => {
      this.pendingChanges.set(fieldName, input.value);
    });
  }

  private initSelectInput(container: HTMLElement, fieldName: string, value: string) {
    const select = container.querySelector('select') as HTMLSelectElement;
    if (!select) return;

    select.value = value || '';

    select.addEventListener('change', () => {
      this.pendingChanges.set(fieldName, select.value);
    });
  }

  private initToggleInput(container: HTMLElement, fieldName: string, value: boolean) {
    const checkbox = container.querySelector('input[type="checkbox"]') as HTMLInputElement;
    if (!checkbox) return;

    checkbox.checked = Boolean(value);

    checkbox.addEventListener('change', () => {
      this.pendingChanges.set(fieldName, checkbox.checked);
    });
  }

  async saveAllChanges() {
    if (this.pendingChanges.size === 0) {
      this.showToast('No changes to save', 'info');
      this.exitEditMode();
      return;
    }

    const token = window.PasswordDialog?.getToken();
    if (!token) {
      this.showToast('Not authenticated. Please refresh and try again.', 'error');
      return;
    }

    let successCount = 0;
    let errorMessage = '';

    for (const [field, value] of this.pendingChanges) {
      const result = await this.saveField(field, value, token);
      if (result.success) {
        successCount++;
        this.originalValues.set(field, value);
        this.updateFieldView(field, result.newValue);
      } else {
        errorMessage = result.error || `Failed to update ${field}`;
        break;
      }
    }

    if (errorMessage) {
      this.showToast(errorMessage, 'error');
    } else {
      this.showToast(`${successCount} field${successCount !== 1 ? 's' : ''} updated`, 'success');
      this.pendingChanges.clear();
      this.exitEditMode();
    }
  }

  private async saveField(field: string, value: unknown, token: string): Promise<SaveResult> {
    try {
      const response = await fetch(`/api/artists/${this.artistSlug}/edit`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ token, field, value }),
      });

      return await response.json() as SaveResult;
    } catch (err) {
      console.error('[InlineEditor] Save error:', err);
      return { success: false, error: 'Connection error. Please try again.' };
    }
  }

  private updateFieldView(fieldName: string, value: unknown) {
    const field = this.infobox?.querySelector(`[data-editable="${fieldName}"]`);
    if (!field) return;

    // Update data-value attribute
    field.setAttribute('data-value', typeof value === 'string' ? value : JSON.stringify(value));

    const viewEl = field.querySelector('.field-view');
    if (!viewEl) return;

    const fieldType = field.getAttribute('data-type');

    if (fieldType === 'tags') {
      const tagContainer = viewEl.querySelector('.tag-list');
      if (tagContainer) {
        const tags = typeof value === 'string' ? JSON.parse(value) : value;
        tagContainer.innerHTML = (tags as string[])
          .map((tag) => `<span class="tag">${this.escapeHtml(tag)}</span>`)
          .join('');
      }
    } else if (fieldType === 'boolean') {
      const badge = viewEl.querySelector('.active-badge');
      if (badge) {
        badge.textContent = value ? 'Active' : 'Inactive';
        badge.className = `active-badge ${value ? 'active-badge--active' : 'active-badge--inactive'}`;
      }
    } else {
      const textEl = viewEl.querySelector('.field-text') || viewEl;
      if (textEl) textEl.textContent = String(value || '—');
    }
  }

  cancelChanges() {
    this.pendingChanges.clear();
    this.exitEditMode();
    this.showToast('Changes cancelled', 'info');
  }

  private escapeHtml(text: string): string {
    const div = document.createElement('div');
    div.textContent = text;
    return div.innerHTML;
  }

  private showToast(message: string, type: 'success' | 'error' | 'info') {
    const icons = { success: '✓', error: '✗', info: 'ℹ' };

    const toast = document.createElement('div');
    toast.className = `toast toast--${type}`;
    toast.innerHTML = `
      <span class="toast__icon">${icons[type]}</span>
      <span class="toast__message">${this.escapeHtml(message)}</span>
    `;

    let container = document.querySelector('.toast-container');
    if (!container) {
      container = document.createElement('div');
      container.className = 'toast-container';
      document.body.appendChild(container);
    }

    container.appendChild(toast);

    requestAnimationFrame(() => {
      toast.classList.add('is-visible');
    });

    setTimeout(() => {
      toast.classList.remove('is-visible');
      setTimeout(() => toast.remove(), 300);
    }, 3000);
  }
}

// Make available globally
window.InlineEditor = InlineEditor;

export default InlineEditor;
