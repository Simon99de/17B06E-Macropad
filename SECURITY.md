# Security Policy for 17B06E‑Macropad

## Overview

This project provides an open‑source macropad including:

- Hardware design files (3D‑printing models, PCB layouts, mechanical design)  
- Firmware configurations and builds (e.g. QMK / VIA / Vial, custom keymaps, compiled UF2s)  
- Helper scripts (e.g. for Linux / KDE to integrate macropad controls like volume, media keys, etc.)  
- Documentation and usage / build / flash instructions  

While hardware design and documentation are generally not security‑critical, firmware, helper scripts, and device communication logic **can** have security implications (e.g. USB/HID behavior, unintended input/output, privilege escalation, unsafe defaults).  

This policy describes what kinds of vulnerabilities are relevant, how to report them, and how they will be handled.

---

## Security‑Relevant Components

The following parts are considered security‑relevant and should be reviewed carefully or patched when issues arise:

- Firmware code (QMK / VIA / Vial configurations or custom patches)  
- Compiled firmware builds (e.g. UF2 files) distributed via this project  
- Helper scripts in `scripts/`, especially those interacting with OS, user permissions, input/output devices, or external programs  
- Communication logic (USB HID behavior, device enumeration, interaction with OS)  

The following parts are **not** usually security‑critical (unless there is a specific safety issue, e.g. electrical hazard in PCB layout):

- CAD / STL / mechanical design files for the case or enclosure  
- PCB layout or mechanical drawings (unless they cause real hardware safety hazards)  
- Documentation, images, README, assembly guides  

---

## Reporting a Vulnerability

If you discover a security vulnerability in any security‑relevant component of this project, please report it in one of the following ways — **do not** open a public issue or pull request for sensitive findings.

- Use the contact options listed on the project website:  
  [simon99.de/ueber-mich-kontakt/](https://simon99.de/ueber-mich-kontakt/)  
- Or check the firmware README for the current responsible maintainers of firmware, see: 
  [`firmware/README.md`](firmware/README.md)
- Additionally, see the scripts README for the responsible maintainers of scripts, see:
  [`scripts/README.md`](/scripts/README.md)  
- If the issue is not sensitive (e.g. logic bug, configuration problem, non‑security bug), you may open a private GitHub discussion:  
  [`Discussions`](https://github.com/Simon99de/17B06E-Macropad/discussions)  

Please include as much information as possible to help reproduce and assess the issue:

- Description of the problem and why you consider it a vulnerability  
- Affected component(s): firmware, script, build, OS / hardware configuration, etc.  
- Version or branch (firmware version, script version, build date, hardware revision)  
- Steps to reproduce the issue (if applicable), or a minimal test case  
- Potential impact (what could go wrong, what permissions / access / harm a user might face)  
- Any proof-of-concept or logs showing the issue (if available)  

All reports will be reviewed and evaluated promptly. If a vulnerability is confirmed, we — the maintainers — will coordinate a fix or mitigation, and notify the reporter once resolved.

---

## Supported Versions & Updates

We strive to support all actively maintained firmware and script builds provided in this repository. However:

- We **do not guarantee** that older builds, forks, or third‑party modifications will receive security fixes.  
- If you run a custom build or unofficial fork, please ensure you thoroughly review and test any changes.  

If you are unsure whether your version is supported, feel free to contact us via the website contact page above.

---

## Responsible Disclosure & Privacy

We appreciate responsible disclosure practices. By reporting issues privately to the contacts above, you help protect other users from uncoordinated public disclosure. We commit to:

- Respecting the privacy and confidentiality of the reporter  
- Working in good faith to verify, fix, and release patches or updated builds  
- Transparently publishing fixes or advisories when appropriate  

---

Thank you for helping keep this project — and its users — safe.  
