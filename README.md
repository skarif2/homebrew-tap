# skarif2's Homebrew tap

Casks for my apps.

```sh
brew install --cask skarif2/tap/sway
```

Homebrew will ask you to trust this tap on first use (Homebrew 6 tap trust);
that prompt is expected.

## Available casks

| Cask | Description | Install |
| ---- | ----------- | ------- |
| `sway` | Sway (alpha, unsigned) | `brew install --cask skarif2/tap/sway` |

Alpha builds are unsigned. The cask clears macOS quarantine itself after
install (Homebrew 6 removed the old `--no-quarantine` flag), so no extra flags
are needed. If Gatekeeper still reports the app as damaged:

```sh
xattr -cr /Applications/Sway.app
```

Note: plain `brew install sway` without `--cask` installs the unrelated `sway`
window manager formula from homebrew-core; always use the qualified cask form
above.
