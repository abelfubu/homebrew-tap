#!/bin/sh
set -eu

ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
CASK=${1:-}
VERSION=${2:-}
case "$CASK" in
  gh-inbox) REPO=gh-inbox; ASSET=GitHub-Inbox ;;
  jira-sprint) REPO=jira-sprint; ASSET=Jira-Sprint ;;
  *) echo "Usage: $0 {gh-inbox|jira-sprint} VERSION" >&2; exit 1 ;;
esac
if ! printf '%s\n' "$VERSION" | grep -Eq '^[0-9]+\.[0-9]+\.[0-9]+$'; then
  echo "Expected a semantic version such as 0.1.0" >&2
  exit 1
fi

URL="https://github.com/abelfubu/$REPO/releases/download/v$VERSION/$ASSET-$VERSION.zip"
SHA256=$(curl -fsSL "$URL" | shasum -a 256 | awk '{print $1}')
FILE="$ROOT/Casks/$CASK.rb"
VERSION="$VERSION" SHA256="$SHA256" ruby -e '
  path = ARGV.fetch(0)
  version = ENV.fetch("VERSION")
  sha = ENV.fetch("SHA256")
  source = File.read(path)
  source.sub!(/^  version "[^"]*"$/, %(  version "#{version}")) || abort("Version stanza not found")
  source.sub!(/^  sha256 "[^"]*"$/, %(  sha256 "#{sha}")) || abort("SHA-256 stanza not found")
  File.write(path, source)
' "$FILE"
ruby -c "$FILE"
printf 'Updated %s to %s (%s)\n' "$CASK" "$VERSION" "$SHA256"
