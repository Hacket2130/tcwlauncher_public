# TCWA3 Launcher Public Releases

This repository is a public backup mirror for TCWA3 Launcher release downloads.
The live launcher download is still hosted at:

```text
https://tcwa3.co.uk/downloads/TCW-Launcher-Windows.zip
```

## Current Files

- `downloads/TCWA3-Launcher-Setup-0.3.1-beta.exe`: current public Windows setup installer.
- `downloads/TCW-Launcher-Windows-0.3.1-beta.zip`: current public Windows launcher package backup.
- `release.json`: launcher update manifest used by the TCWA3 backend.
- `SHA256SUMS.txt`: checksums for verifying the public release files.

## Install

1. Download `downloads/TCWA3-Launcher-Setup-0.3.1-beta.exe`.
2. Run the setup file.
3. Use the Desktop or Start Menu shortcut named `TCWA3 Launcher`.

Future launcher updates are downloaded, verified, installed, and restarted by the launcher. The setup installer closes any old launcher window first so players do not keep running the older version behind the update.

## Windows Blocking Fallback

Some Windows installs may block new unsigned community apps while they build reputation.
If Smart App Control or SmartScreen blocks this release, direct players to the public
install page, Steam Workshop collection, Galaxy Map, and Discord support while the
free public release path gains reputation.

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
