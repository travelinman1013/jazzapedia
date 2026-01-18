/**
 * Markdown and HTML utilities
 */

/**
 * Strip HTML tags and normalize whitespace to get plain text.
 * Used for search index.
 */
export function stripHtml(html: string): string {
  return html
    .replace(/<[^>]*>/g, ' ')
    .replace(/&nbsp;/g, ' ')
    .replace(/&amp;/g, '&')
    .replace(/&lt;/g, '<')
    .replace(/&gt;/g, '>')
    .replace(/&quot;/g, '"')
    .replace(/&#39;/g, "'")
    .replace(/\s+/g, ' ')
    .trim();
}

/**
 * Extract plain text from markdown
 */
export function markdownToPlainText(markdown: string): string {
  return markdown
    // Remove headers
    .replace(/^#{1,6}\s+/gm, '')
    // Remove emphasis
    .replace(/[*_]{1,3}([^*_]+)[*_]{1,3}/g, '$1')
    // Remove links but keep text
    .replace(/\[([^\]]+)\]\([^)]+\)/g, '$1')
    // Remove images
    .replace(/!\[[^\]]*\]\([^)]+\)/g, '')
    // Remove code blocks
    .replace(/```[\s\S]*?```/g, '')
    .replace(/`([^`]+)`/g, '$1')
    // Remove horizontal rules
    .replace(/^[-*_]{3,}$/gm, '')
    // Normalize whitespace
    .replace(/\s+/g, ' ')
    .trim();
}

/**
 * Extract the first paragraph from markdown as a summary
 */
export function extractSummary(markdown: string, maxLength: number = 200): string {
  // Skip frontmatter if present
  const content = markdown.replace(/^---[\s\S]*?---\n*/m, '');

  // Find first non-empty paragraph
  const paragraphs = content.split(/\n\n+/);
  for (const p of paragraphs) {
    const text = markdownToPlainText(p);
    if (text.length > 20) {
      if (text.length <= maxLength) return text;
      // Truncate at word boundary
      const truncated = text.slice(0, maxLength);
      const lastSpace = truncated.lastIndexOf(' ');
      return (lastSpace > maxLength / 2 ? truncated.slice(0, lastSpace) : truncated) + '...';
    }
  }
  return '';
}

/**
 * Remove a specific section from HTML content by heading text
 */
export function removeHtmlSection(html: string, sectionTitle: string): string {
  // Match section from heading to next same-level or higher heading
  const regex = new RegExp(
    `<h([2-6])[^>]*>\\s*${sectionTitle}\\s*</h\\1>[\\s\\S]*?(?=<h[1-6]|$)`,
    'gi'
  );
  return html.replace(regex, '').trim();
}
