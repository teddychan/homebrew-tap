# homebrew-tap

Homebrew tap for Teddy Chan's macOS apps ("Dragon Apps").

A tap is a third-party GitHub repository Homebrew can install casks from, beyond
its default `homebrew/cask`; Homebrew locates it by the `homebrew-` name prefix,
which is why `teddychan/tap` resolves to `teddychan/homebrew-tap`.

## Apps

| Cask | App | Page |
|------|-----|------|
| `clipmenu-2` | ClipMenu 2 — clipboard-history menu-bar app | https://www.dragonapp.com/clipmenu-2/ |
| `dragon-sample-app` | Dragon Sample App — reference menu-bar app showcasing the DragonKit modules | no product page — see https://github.com/teddychan/dragon-sample-app |
| `ice-2` | Ice 2 — menu bar manager | https://www.dragonapp.com/ice-2/ |
| `spectacle-2` | Spectacle 2 — move and resize windows with keyboard shortcuts | https://www.dragonapp.com/spectacle-2/ |
| `yahoo-keykey-2` | Yahoo! KeyKey 2 — Cangjie & Simplex Traditional Chinese input method | https://www.dragonapp.com/yahoo-keykey-2/ |

## Install

```sh
brew install --cask teddychan/tap/clipmenu-2
brew install --cask teddychan/tap/dragon-sample-app
brew install --cask teddychan/tap/ice-2
brew install --cask teddychan/tap/spectacle-2
brew install --cask teddychan/tap/yahoo-keykey-2
```

That one command auto-taps this repo and installs the latest notarized build. Equivalently:

```sh
brew tap teddychan/tap
brew install --cask clipmenu-2
brew install --cask dragon-sample-app
brew install --cask ice-2
brew install --cask spectacle-2
brew install --cask yahoo-keykey-2
```

## Update

```sh
brew upgrade --cask clipmenu-2
brew upgrade --cask dragon-sample-app
brew upgrade --cask ice-2
brew upgrade --cask spectacle-2
brew upgrade --cask yahoo-keykey-2
```

Naming a cask explicitly, as above, does upgrade it — even though every cask here
declares `auto_updates true`. A bare `brew upgrade` skips any cask that declares
`auto_updates true` unless you also pass `--greedy` or `--greedy-auto-updates`.
(Verified on Homebrew 6.0.18: `brew upgrade --cask --dry-run clipmenu-2` reported
it would upgrade 2.20.9 → 2.21.0 despite `auto_updates true`, because naming the
cask bypasses the skip.)

These apps also update themselves via Sparkle, so an app that has already
self-updated can leave Homebrew's recorded version stale — that's expected, not a
fault. Every cask here is bumped automatically after each release: the app's
release CI opens a PR against this repo and merges it itself.

## Uninstall

```sh
brew uninstall --cask clipmenu-2          # remove the app
brew uninstall --zap --cask clipmenu-2    # also remove preferences and caches

brew uninstall --cask dragon-sample-app
brew uninstall --zap --cask dragon-sample-app

brew uninstall --cask ice-2
brew uninstall --zap --cask ice-2

brew uninstall --cask spectacle-2
brew uninstall --zap --cask spectacle-2

brew uninstall --cask yahoo-keykey-2
brew uninstall --zap --cask yahoo-keykey-2
```
