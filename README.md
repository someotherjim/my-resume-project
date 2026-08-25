# my-resume-project

An interactive, client-side web application designed to render professional resumes dynamically from a centralized JSON data source. Users can toggle between various CSS themes via a dropdown menu and export/print their preferred resume layout cleanly.

---

## 📸 Key Features

* **JSON-Driven Resume Content**: Content is fully decoupled from presentation. Modify your resume data in a single JSON file (`resume-data.json`), and all layouts update automatically.
* **Dynamic Theme Switching**: Easily switch between different CSS stylesheets on the fly using a UI dropdown menu.
* **Print-Ready Styles**: Built-in `@media print` CSS rules ensure clean, single/multi-page PDF outputs without browser UI clutter or unnecessary margins.
* **Local One-Click Launcher**: Includes a simple batch file (`start.bat`) that spins up a lightweight local Python HTTP server and automatically opens the application in your default browser.

---

## 📁 Repository Structure

```text
my-resume-project/
├── AI prompt res to JSON file # Creates JSON file from existing resume.txt
└──src
	├── .gitignore             # Git ignore rules for OS and temporary files
	├── CHANGELOG.md           # Version history and change tracking
	├── README.md              # Project documentation
	├── start_resume.bat       # Local batch launcher script
	├── index.html             # Core application HTML container with .js
	├── classy.template.html   # Classy design theme
	├── elegant.template.html  # Elegant design theme
	├── flat.template.html     # Basic resume theme
	├── modern.template.html   # Modern design theme
	├── spartan.template.html  # Traditional design theme  
	└── resume.json            # Central JSON data file for resume content
```

---

## 🚀 Quick Start & Usage

### Prerequisites
* **Python 3.x** installed on your machine (required for local HTTP server execution).
* **Git** (for version control).

### Running the Application (Windows)
Double-click **`start.bat`** or run it from your command line:

```cmd
start.bat
```

This script performs two actions:
1. Starts a Python HTTP server on port `8000` (`python -m http.server 8000`).
2. Opens chrome web browser to display `http://localhost:8000/index.html`.

---

## 🛠️ How It Works

1. **Data Fetching**: When `index.html` loads, javascript fetches `data/resume-data.json` via asynchronous JavaScript (`fetch`).
2. **Template Rendering**: The script parses sections (Work Experience, Education, Skills, Projects) and populates the DOM.
3. **Theme Engine**: Selecting an option from the dropdown menu updates the `<link id="theme-stylesheet" rel="stylesheet" href="...">` element dynamically, applying the selected CSS theme instantaneously.
4. **Printing**: Click the **Print Resume** button or press `Ctrl + P` / `Cmd + P`. The print media queries isolate the resume container while hiding control elements (e.g., the theme selector bar).

---

## 📋 JSON Schema Overview

The resume structure is defined in `data/resume-data.json`. Example structure:

```json
{
  "basics": {
    "name": "Your Name",
    "label": "IT Professional & Systems Engineer",
    "email": "your.email@example.com",
    "website": "https://yourdomain.com",
    "location": "City, State"
  },
  "summary": "Experienced professional specializing in...",
  "work": [
    {
      "company": "Tech Corp",
      "position": "Senior Systems Analyst",
      "startDate": "2020",
      "endDate": "Present",
      "highlights": [
        "Implemented CI/CD pipelines.",
        "Managed enterprise deployments."
      ]
    }
  ],
  "skills": ["Git", "Python", "HTML/CSS", "CI/CD", "Linux"]
}
```

---

## 📝 Development Workflow & CI/CD Best Practices

This repository follows a standard feature-branch Git workflow:

1. **Create a Feature Branch**:
   ```bash
   git checkout -b feat/add-new-theme
   ```
2. **Make Changes & Update Documentation**:
   * Add new themes in `css/`.
   * Log updates in `CHANGELOG.md`.
3. **Commit with Semantic Commit Messages**:
   ```bash
   git commit -m "feat: add compact high-density CSS theme"
   ```
4. **Push & Create a Pull Request**:
   ```bash
   git push -u origin feat/add-new-theme
   ```

---

## 📄 License

Distributed under the MIT License. See `LICENSE` for more details.
