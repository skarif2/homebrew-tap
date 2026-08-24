# skarif2's Homebrew tap

Casks for my apps.

```sh
brew tap skarif2/tap
```

## Available casks

| Cask | Description | Install |
| ---- | ----------- | ------- |
| `sway` | Sway (alpha, unsigned) | `brew install --cask sway --no-quarantine` |

Alpha builds are unsigned, so install casks from this tap with
`--no-quarantine`; otherwise macOS quarantines the app and reports it as
damaged on first launch. If you already installed without the flag:

```sh
xattr -cr /Applications/Sway.app
```
