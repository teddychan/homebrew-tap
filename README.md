# homebrew-tap

Homebrew tap for Teddy Chan's macOS apps ("Dragon Apps").

## Apps

| Cask | App | Page |
|------|-----|------|
| `clipmenu-2` | ClipMenu 2 — clipboard-history menu-bar app | https://www.dragonapp.com/clipmenu-2/ |
| `ice-2` | Ice 2 — menu bar manager | https://www.dragonapp.com/ice-2/ |
| `yahoo-keykey-2` | Yahoo KeyKey 2 — Cangjie & Simplex Traditional Chinese input method | https://www.dragonapp.com/yahoo-keykey-2/ |

## Install

```sh
brew install --cask teddychan/tap/clipmenu-2
brew install --cask teddychan/tap/ice-2
brew install --cask teddychan/tap/yahoo-keykey-2
```

That one command auto-taps this repo and installs the latest notarized build. Equivalently:

```sh
brew tap teddychan/tap
brew install --cask clipmenu-2
brew install --cask ice-2
brew install --cask yahoo-keykey-2
```

## Update

```sh
brew upgrade --cask clipmenu-2
brew upgrade --cask ice-2
brew upgrade --cask yahoo-keykey-2
```

Each cask is bumped automatically by its app's release CI. The apps also update
themselves via Sparkle, so `brew upgrade` and the in-app updater may both be available.

## Uninstall

```sh
brew uninstall --cask clipmenu-2          # remove the app
brew uninstall --zap --cask clipmenu-2    # also remove preferences and caches

brew uninstall --cask ice-2
brew uninstall --zap --cask ice-2

brew uninstall --cask yahoo-keykey-2
brew uninstall --zap --cask yahoo-keykey-2
```
