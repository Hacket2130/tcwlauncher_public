#!/usr/bin/env bash
set -euo pipefail

version="0.3.6-beta"
root="${TCW_ROOT:-/srv/tcw-launcher}"
repo_raw="${TCW_PUBLIC_RAW:-https://raw.githubusercontent.com/Hacket2130/tcwlauncher_public/main}"
work="/tmp/tcwa3-public-${version}"

installer="TCWA3-Launcher-Setup-${version}.exe"
zip="TCW-Launcher-Windows-${version}.zip"
website="TCWA3-Website-${version}.zip"

echo "Preparing TCWA3 public deploy ${version}"
mkdir -p "${work}/downloads" "${root}/public/downloads" "${root}/backups"

cd "${work}"
curl -fL -o release.json "${repo_raw}/release.json"
curl -fL -o SHA256SUMS.txt "${repo_raw}/SHA256SUMS.txt"
curl -fL -o "downloads/${installer}" "${repo_raw}/downloads/${installer}"
curl -fL -o "downloads/${zip}" "${repo_raw}/downloads/${zip}"
curl -fL -o "downloads/${website}" "${repo_raw}/downloads/${website}"

grep "${version}" SHA256SUMS.txt > SHA256SUMS-${version}.txt
sha256sum -c SHA256SUMS-${version}.txt

stamp="$(date -u +%Y%m%d-%H%M%S)"
tar -czf "${root}/backups/public-release-before-${version}-${stamp}.tar.gz" \
  -C "${root}" release.json public/index.html public/profile.html public/servers.html public/community-manager.html public/marketplace.html 2>/dev/null || true

cp "downloads/${installer}" "${root}/public/downloads/${installer}"
cp "downloads/${zip}" "${root}/public/downloads/${zip}"
cp release.json "${root}/release.json"
unzip -oq "downloads/${website}" -d "${root}/public"

systemctl restart tcw-profile-api 2>/dev/null || systemctl restart tcw-launcher 2>/dev/null || true

echo "TCWA3 ${version} files installed."
echo "Verify with:"
echo "  curl -fsS 'https://api.tcwa3.co.uk/v1/launcher/latest?version=0.0.0&platform=windows'"
echo "  curl -fsSI 'https://tcwa3.co.uk/downloads/${installer}'"
