## [Unreleased]

### Added
- Employer-grouping toggle button in the control panel ("Grouping: Separate" / "Grouping: Combined").
  When enabled, consecutive `resume.work` entries sharing the same employer name are rendered as a
  single combined block (one employer header with a combined date range, containing each position as
  a nested sub-entry) instead of fully separate entries. Only adjacent same-employer entries are merged;
  non-consecutive stints at the same employer are left separate. Preference persists across reloads via
  `localStorage`.
- Grouped-view CSS (`.employer-group`, `.sub-position`, `.sub-position-header`, `.sub-position-dates`)
  added to `modern.template.html`, including a print rule to avoid page breaks inside a combined
  employer block.

### Changed
- Updated `start.bat` to open Windows' User's default browser vs. chrome, specifically.

### Fixed
- Skills and certificates were being rendered as `<div>` children inside `<ul>` containers in some
  templates (invalid HTML nesting), which also silently broke pill-badge styling that targeted `li`
  selectors (e.g. the teal skill pills in the modern theme).
- Container element type for skills/certificates is now detected at render time (`<li>` for `<ul>`/`<ol>`
  containers, `<div>` for plain `<div>` containers), matching whatever structure each individual theme
  template actually uses rather than assuming one or the other.
- Added `list-style: none` to `.cert-list` in `modern.template.html` to prevent a double-bullet
  appearance (browser default marker plus the manually rendered "•" character) now that certificates
  render as proper `<li>` elements there.