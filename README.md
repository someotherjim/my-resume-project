# my-resume-project

An interactive, client-side web application designed to render professional resumes dynamically from a centralized JSON data source. Users can toggle between various CSS themes via a dropdown menu and export/print their preferred resume layout cleanly. Advanced users can set up role JSON files that then dynamically replace bullets in resume to target a specific job role.

---

## 📸 Key Features

* **JSON-Driven Resume Content**: Content is decoupled from presentation. Modify your resume data in a single JSON file (`resume.json`), and all layouts update automatically.
* **Resume Role Switching**: Leveraging IDs and a secondary role JSON file, you can override the bulleted highlights of your default resume.
* **Dynamic Theme Switching**: Easily switch between different CSS stylesheets on the fly using a UI dropdown menu.
* **Print-Ready Styles**: Built-in `@media print` CSS rules ensure clean, single/multi-page PDF outputs without browser UI clutter or unnecessary margins.

---

## 📁 Repository Structure

```text
my-resume-project/
├── .gitignore		 # Exclusion rules for this project
├── CHANGELOG.md     # Version history and change tracking
├── index.html		 # Core application HTML container
├── LICENSE			 # MIT Licensing details
├── README.md		 # Project documentation
└──src
	├── classy.template.html	  # Classy design theme
	├── elegant.template.html	  # Elegant design theme
	├── flat.template.html		  # Basic resume theme
	├── modern.template.html	  # Modern design theme
	├── spartan.template.html     # Traditional design theme  
	├── resume.json				  # Central JSON data file for resume content
	└── roles
		├── cloud.role.json			 # file that replaces role highlights whenever role IDs match
		├── datacenter.role.json     # file that replaces role highlights whenever role IDs match
		├── dba.role.json			 # file that replaces role highlights whenever role IDs match
		└── security.role.json		 # file that replaces role highlights whenever role IDs match
```

---

## 🚀 Quick Start & Usage

To view locally, serve the directory using your preferred static server (e.g., python3 -m http.server or VS Code Live Server).

## 🛠️ How It Works

1. **Data Fetching**: When `index.html` loads, javascript fetches `data/resume.json` via asynchronous JavaScript (`fetch`).
2. **Template Rendering**: The script parses sections (Work Experience, Education, Skills, Projects) and populates the DOM.
3. **Theme Engine**: Selecting an option from the dropdown menu updates the `<link id="theme-stylesheet" rel="stylesheet" href="...">` element dynamically, applying the selected CSS theme instantaneously.
4. **Printing**: Click the **Print Resume** button or press `Ctrl + P` / `Cmd + P`. The print media queries isolate the resume container while hiding control elements (e.g., the theme selector bar).

---

## 📋 JSON Schema Overview

The resume structure is inspired by , except it has Example structure:

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
        {
          "id": "tec-lead-standups",
          "text": "Ran daily standups and served as an Engineering contact point for high-profile customer project resolutions."
        },
        {
          "id": "tec-lead-stakeholders",
          "text": "Coordinated with executive leadership and stakeholders to ensure proper task prioritization and tool management."
        }
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