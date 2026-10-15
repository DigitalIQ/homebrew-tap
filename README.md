# homebrew-tap

Homebrew tap for apps by DigitalIQ.

```bash
brew tap digitaliq/tap
brew trust --tap digitaliq/tap
```

| Cask | App |
| --- | --- |
| `pocketwerk` | Pocketwerk |
| `blackhole-wallpaper` | [Black Hole Wallpaper](https://github.com/DigitalIQ/blackhole-wallpaper), a live black-hole wallpaper and screen saver for macOS |

```bash
brew install --cask blackhole-wallpaper
```

The apps are not notarized. Homebrew quarantines the download, so the first start needs Open Anyway in System Settings > Privacy & Security, or `xattr -dr com.apple.quarantine` on the app.
