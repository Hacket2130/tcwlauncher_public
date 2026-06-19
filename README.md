# TCWA3 Launcher Public Releases

This repository is a public backup mirror for TCWA3 Launcher release downloads.
The live launcher download is still hosted at:

```text
https://tcwa3.co.uk/downloads/TCW-Launcher-Windows.zip
```

## Current Files

- `downloads/TCW-Launcher-Windows.zip`: public Windows launcher package.
- `release.json`: launcher update manifest used by the TCWA3 backend.
- `SHA256SUMS.txt`: checksum for verifying the release zip.

## Install

1. Download `downloads/TCW-Launcher-Windows.zip`.
2. Extract the zip.
3. Run `Install_TCWA3_Launcher.cmd`.
4. Use the desktop shortcut named `TCWA3 Launcher`.

Future launcher updates are downloaded, verified, installed, and restarted by the launcher.

## Legal Notice

TCWA3 Launcher is the property of Hacket2130 / Logan Greaves. Redistribution or
modification is prohibited without permission.

Created with the brilliant work of Codex.

Star Wars and The Clone Wars are property of Lucasfilm Ltd. and Disney. This is
an unofficial community project and is not affiliated with Lucasfilm, Disney,
Bohemia Interactive, Valve, or Steam. All rights are reserved by their
respective owners.

## Maintainer Rules

This repo is for public release artifacts only. Do not commit:

- launcher source code
- backend source code
- `.env` files
- database files
- private keys
- Godot export encryption keys
- server backups
- Cloudflare, Hetzner, Fasthosts, or Steam secrets
