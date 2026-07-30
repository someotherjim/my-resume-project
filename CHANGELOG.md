## [Unreleased]
### Changed
- Updated `start.bat` to open Windows' User's default browser vs. chrome, specifically.
## [Unreleased]
### Fixed
- Updated fetch paths in `index.html` to use relative root-to-src references.
- Added `certContainer` to page layout via arrary in `index.html` along with <section> code in all (`src\*.template.html`) template files
- Added dynamic timestamp query parameter (`?t=...`) to fetch requests to prevent browser caching during development.