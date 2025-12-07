# Contributing to 17B06E-Macropad

Thank you for your interest in contributing to the 17B06E Macropad project!  
This document explains how to contribute, report issues, submit firmware updates,
improve documentation, hardware designs or helper scripts.

## How to Contribute

There are several ways you can contribute:

### 1. Reporting Issues

- Please check existing issues before opening a new one.  
- For bugs or feature requests, open a GitHub issue using the provided templates:  
  https://github.com/Simon99de/17B06E-Macropad/issues  
- Include detailed information such as hardware revision, firmware or script version, steps to reproduce, and output or screenshots if applicable.

### 2. Firmware Contributions

- Parts of the firmware are maintained by contributors listed in [`firmware/README.md`](./firmware/README.md).  
- Custom patches, keymaps, or configuration updates should be discussed or submitted via **pull requests** to the appropriate branch.  
- Please test firmware on real hardware before submitting changes.

### 3. Script Contributions (e.g. Linux/KDE helper‑scripts)

- The `scripts/` directory may contain utility scripts (e.g. to map rotary encoders to volume, etc.).  
- If you add or improve a script, make sure to:  
  - Describe clearly what the script does (purpose, dependencies, how to run it)  
  - Add usage instructions or example configs in the script’s README or in the root README  
  - Avoid including secrets, hard‑coded paths, or machine‑specific settings — use environment variables or configuration options if possible  

### 4. Hardware / Design Contributions

- CAD/STL files, case designs, PCB layouts, and mechanical documents can be improved or fixed.  
- Open a pull request or issue with your proposed changes.  
- If you update mechanical design or PCB layout, try to include images/renderings or test‑prints where useful.

### 5. Documentation Contributions

- README, instructions, guides, build/flash instructions, usage manuals — alles darf verbessert werden.  
- Use clear, concise, and consistent formatting.  

### 6. Pull Requests

- Fork the repository and create a feature/topic branch.  
- Commit with clear messages summarizing your changes.  
- Push to your fork and open a pull request targeting the main branch (or `Dev-Testing`, if appropriate).  
- Include a description of changes, related issue number(s) if applicable, and testing or usage information.  

### 7. Testing & Validation

- Firmware changes: Test on hardware before submitting.  
- Script changes: Test on target OS / distribution (z. B. Linux + KDE), document dependencies.  
- Hardware design changes: If possible, verify with CAD preview, 3D print or simulations.  

### 8. Code of Conduct

All contributors are expected to follow the [Code of Conduct](CODE_OF_CONDUCT.md). Be respectful, constructive, and inclusive.

### 9. Security & Sensitive Issues

Do **not** submit potential security vulnerabilities via a public issue.  
Refer to [SECURITY.md](SECURITY.md) for instructions on responsible disclosure.

---

We appreciate all contributions — whether it's firmware, hardware design, helpful scripts, bug reports or docs.  
By contributing, you agree that your changes are licensed under the project’s open‑source license.
