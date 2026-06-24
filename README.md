# TCWA3 Launcher Public Releases

This repository is a public backup mirror for TCWA3 Launcher release downloads.
The live launcher download is still hosted at:

```text
https://tcwa3.co.uk/
https://tcwa3.co.uk/downloads/TCWA3-Launcher-Setup-0.4.1-beta.exe
```

## Current Files

- `downloads/TCWA3-Launcher-Setup-0.4.1-beta.exe`: current public Windows setup installer.
- `downloads/TCW-Launcher-Windows-0.4.1-beta.zip`: current public Windows launcher package backup.
- `downloads/TCW-Launcher-Linux-0.4.1-beta.zip`: current public Linux launcher package backup.
- `downloads/TCWA3-Website-0.4.1-beta.zip`: current public website static-file package backup.
- `downloads/TCWA3-Backend-0.4.1-beta.zip`: current public backend package backup.
- `release.json`: launcher update manifest used by the TCWA3 backend.
- `SHA256SUMS.txt`: checksums for verifying the public release files.

## Install

1. Download `downloads/TCWA3-Launcher-Setup-0.4.1-beta.exe`.
2. Run the setup file.
3. Use the Desktop or Start Menu shortcut named `TCWA3 Launcher`.

Future launcher updates are downloaded, verified, installed, and restarted by the launcher. The setup installer closes any old launcher window first so players do not keep running the older version behind the update.

## Windows Blocking Fallback

Some Windows installs may block new unsigned community apps while they build reputation.
This warning is about unsigned publisher reputation, not automatically proof that
the launcher is unsafe.

Safe install guidance:

1. Only download from `https://tcwa3.co.uk/`, `https://tcwa3.co.uk/downloads/`, or this official public release mirror.
2. If SmartScreen appears, choose `More info`, then `Run anyway`.
3. If Windows shows an `Unblock` checkbox in file Properties, tick it and apply.
4. If Smart App Control blocks the app with no run option, direct players to the fallback links below and Discord support while TCWA3 staff review the blocked build.

Fallback links:

- Official install page: `https://tcwa3.co.uk/`
- Steam Workshop collection: `steam://url/CommunityFilePage/3732720288`
- Galaxy Map: `https://tcwa3-galaxy-map.base44.app/`
- Discord support: `https://discord.gg/QvWEzwWszA`

Do not ask players to disable Windows security globally. Do not add packers,
obfuscators, or repackaged wrappers just to suppress antivirus or SmartScreen
warnings; keep the release path transparent and verifiable.

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
