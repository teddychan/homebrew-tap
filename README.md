# homebrew-tap

Homebrew tap for Teddy Chan's macOS apps.

## Install

```sh
brew install --cask teddychan/tap/clipmenu-2
brew install --cask teddychan/tap/ice-2
```

That one command auto-taps this repo and installs the latest notarized build. Equivalently:

```sh
brew tap teddychan/tap
brew install --cask clipmenu-2
brew install --cask ice-2
```

## Update

```sh
brew upgrade --cask clipmenu-2
brew upgrade --cask ice-2
```

Some apps also update themselves via Sparkle, so `brew upgrade` and the in-app updater may both be available.

## Uninstall

```sh
brew uninstall --cask clipmenu-2          # remove the app
brew uninstall --zap --cask clipmenu-2    # also remove preferences and caches
brew uninstall --cask ice-2
brew uninstall --zap --cask ice-2
```
