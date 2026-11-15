# abelfubu Homebrew Tap

Homebrew casks for native macOS apps maintained by [@abelfubu](https://github.com/abelfubu).

## Install

```sh
brew tap abelfubu/tap
brew trust abelfubu/tap
brew install --cask gh-inbox
# or
brew install --cask jira-sprint
```

You can also install without adding the tap permanently:

```sh
brew install --cask abelfubu/tap/gh-inbox
brew install --cask abelfubu/tap/jira-sprint
```

## Applications

| Cask | Application | Dependencies |
| --- | --- | --- |
| `gh-inbox` | Keyboard-driven native GitHub pull-request inbox | `gh` |
| `jira-sprint` | Keyboard-driven native Jira current-sprint list | `acli` |

Both apps require macOS 14 or newer and include Apple Silicon and Intel binaries. Releases are ad-hoc signed, not notarized; macOS may require **right-click → Open** on first launch.

## Update a cask

After publishing the corresponding GitHub release:

```sh
./scripts/update-cask.sh gh-inbox 0.1.0
./scripts/update-cask.sh jira-sprint 0.1.0
```

The script downloads the release asset, updates the cask version and SHA-256, and runs Ruby syntax checks. Review and commit the resulting cask changes.
