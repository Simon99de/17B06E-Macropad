# Security Policy

## Overview

This project provides an open-source macropad including hardware design files,
QMK/VIA/Vial firmware configurations, customized builds (e.g., UF2 files), and
documentation. While hardware and design files (e.g., case, STL, PCB layout)
are not usually security-critical, firmware and software components may be.

Some parts of the firmware are maintained by contributors listed in
[`firmware/README.md`](/firmware/README.md).  
Security issues related to firmware or custom code should be reported according
to this policy.

## Security-Relevant Components

The following components are considered security-relevant and may require
security fixes or careful review:

- QMK-based firmware modules, including custom patches or scripts  
- VIA / Vial firmware definitions and configuration files  
- Custom keymap logic or other modifications to firmware provided in this repo  
- USB HID behavior / device communication logic  

The following components are **not** considered security-critical and generally
will not receive security patches:

- CAD/3D-print models (STL), case design files, mechanical design  
- PCB layout or routing (unless causing an electrical safety issue)  
- Documentation, images, assembly instructions  

## Reporting a Vulnerability

If you believe you have found a security vulnerability related to the firmware
or software parts of this project, please report it privately — do **not** open
a public GitHub issue for sensitive findings.

You may report vulnerabilities via:

- Contact options listed on the project website:  
  [simon99.de/ueber-mich-kontakt/](https://simon99.de/ueber-mich-kontakt/)

- Additionally, see the firmware README for responsible firmware maintainers:  
  [`firmware/README.md`](/firmware/README.md)

For non-sensitive issues such as logic bugs or configuration problems, you may
also open a private GitHub discussion:  
https://github.com/Simon99de/17B06E-Macropad/discussions

All reports will be reviewed and handled promptly. If an issue is confirmed,
we will work together with the responsible maintainers to produce a fix and
coordinate disclosure responsibly. Reporters will be notified once a resolution
is available.

We appreciate responsible disclosure and welcome contributions that help
improve the security and robustness of this open-source macropad project.
