# homebrew-tap

Homebrew tap for [ClipMenu 2](https://www.dragonapp.com/) — a clipboard-history menu-bar app for macOS.

## Install

```sh
brew install --cask teddychan/tap/clipmenu-2
```

That one command auto-taps this repo and installs the latest notarized build. Equivalently:

```sh
brew tap teddychan/tap
brew install --cask clipmenu-2
```

## Update

```sh
brew upgrade --cask clipmenu-2
```

The app also updates itself via Sparkle, so `brew upgrade` and the in-app updater stay in sync.

## Uninstall

```sh
brew uninstall --cask clipmenu-2          # remove the app
brew uninstall --zap --cask clipmenu-2    # also remove preferences and caches
```
