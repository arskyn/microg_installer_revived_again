[![Telegram](https://img.shields.io/badge/Telegram-microGRevivedAgain-blue?logo=telegram)](https://t.me/microGRevivedAgain)
[![Website](https://img.shields.io/badge/Website-spacealtctrl.net-blue?logo=firefoxbrowser&logoColor=white)](https://spacealtctrl.net)

# microG Installer Revived… again

---

A Magisk / KernelSU module that converts patched microG GmsCore (to avoid signature spoofing) into a system-level app to improve Play Integrity behavior and testing on custom or rooted devices.

This module improves how microG interacts with the Android system by converting the `GmsCore` and `Companion` apps into privileged system-level apps (`priv-app`).

> If this module helps you, please consider sharing your Play Integrity results in the [Telegram Results Group](https://t.me/microGRevivedAgainResults).

---

### Features

- **System-Level Promotion**: Promotes patched microG and Companion apps to `/system/product/priv-app/` or `/system/priv-app/` for system-level permissions.
- **In-App WebUI**: Manage everything from a clean interface embedded directly inside KernelSU. For Magisk users, the [WebUI X](https://github.com/MMRLApp/WebUI-X-Portable) module is recommended to view this interface.
- **Promote / Demote**: Easily toggle the module active state and manage your microG system apps.
- **Built-in microG Updater**: Features an "Installer" that fetches the latest official releases from our microG GitHub repository, allowing you to quickly download and update your APKs.
- **Multi-Language Support**: The WebUI is localized for community-driven translations.

---

### Installation

1. Flash the `microg_installer_revived_again` ZIP file via Magisk or KernelSU.
2. Reboot your device.
3. **KernelSU Users**: Open the KernelSU app, navigate to the Modules tab, and tap the module to open the WebUI. From here you can check status, manage updates, and access logs (if enabled).
4. **Magisk Users**: I suggest using [WebUI X](https://github.com/MMRLApp/WebUI-X-Portable) to interact with the module's interface.

---

### Support & Contributions

If you have/find a bug, please turn on "Debug logging" in the WebUI Settings, reproduce the issue, check the **Logs** tab, and copy the output into a new [GitHub Issue](https://github.com/spacealtctrl/microg_installer_revived_again/issues).

If you'd like to help translate the WebUI into your language, please fork the repository and see the `webui/src/locales/` directory!

---

### Credits
- **[microG Project](https://microg.org)** for the core GmsCore implementation.
- **[nift4](https://github.com/nift4/microg_installer_revived)** and **[spacealtctrl](https://github.com/spacealtctrl/microg_installer_revived_again)** for the original module.
- **Hieu Van** 
- **All Telegram community members for testing and feedback.**
