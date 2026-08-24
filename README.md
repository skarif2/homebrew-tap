# skarif2's Homebrew tap

Casks for my apps.

## Available casks

| Cask | Description | Install |
| ---- | ----------- | ------- |
| `sway` | Dev workflow manager: session tree + Claude terminal + editor | `brew install --cask skarif2/tap/sway` |

The fully qualified name (`skarif2/tap/sway`) is the whole setup: it taps this
repository and installs in one command. Homebrew asks you to confirm trust the
first time; confirm and you're set.

If an app doesn't open after a manual (non-Homebrew) install, this clears it
up:

```sh
xattr -cr /Applications/Sway.app
```

Casks installed from this tap handle that step automatically.
