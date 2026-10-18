# AGENTS.md

Homebrew tap (`teddychan/tap`) holding the casks for the Dragon Apps: ClipMenu 2, Dragon Sample App, Ice 2, Spectacle 2 and Yahoo! KeyKey 2.

## Project rules

### Editing casks

- Release CI only bumps `version` and `sha256`. Every other stanza (`depends_on`, `uninstall`, `zap`) is hand-maintained and persists across releases, so fix it in the cask file directly.
- Declare a macOS 26 floor as `depends_on macos: :tahoe`. The string forms (`">= 26"`, `"26"`) are rejected when the cask loads.
- Declare `depends_on arch: :arm64` for any app that ships an arm64-only build; leaving it out lets Homebrew install a build that cannot launch, the same class of bug as a missing macOS floor.
- Derive a `zap` list from the app's in-app `UninstallConfig` (its bundle id, `suiteNames` and `extraCleanupPaths`) and from what the app actually writes, not from the bundle id alone. For example Spectacle 2 keeps its settings in the separate suite `com.dragonapp.spectacle-2.settings`, so both that plist and `com.dragonapp.spectacle-2.plist` must be zapped.
- `Casks/ice-2.rb` zaps only `com.dragonapp.ice` paths on purpose. Don't add `com.jordanbaird.Ice`: that domain belongs to the upstream `jordanbaird-ice` cask, so zapping it would delete a different installed app's settings. Don't add `com.dragonapp.ice2*`: those were local dev/test artifacts that no released build writes. Re-check only if a released Ice 2 starts writing such a domain.

### Validating casks

- `brew style` only lints formatting; it passes a bad `depends_on` and wrong paths. Validate every cask edit with `brew audit --cask --online --strict` and `brew info --cask`, and load it both with and without `HOMEBREW_DEVELOPER=1` (that setting turns deprecation warnings into hard load errors).
- Both commands reject file paths and need the cask inside a tap, and the installed `teddychan/tap` clone doesn't reflect local edits. Use a scratch tap made as a plain directory, never via `brew tap-new`:

  ```sh
  T="$(brew --repository)/Library/Taps/scratchcheck/homebrew-tapcheck"
  mkdir -p "$T/Casks" && cp Casks/<cask>.rb "$T/Casks/"
  git -C "$T" init -q && git -C "$T" add -A
  git -C "$T" -c user.name="Teddy Chan" -c user.email=1013507+teddychan@users.noreply.github.com commit -qm scratch
  brew audit --cask --online --strict scratchcheck/tapcheck/<cask>
  brew info --cask scratchcheck/tapcheck/<cask>
  rm -rf "$(brew --repository)/Library/Taps/scratchcheck"
  ```

  Because the directory was never `brew tap`ped, cleanup is a plain `rm -rf` with no `brew untap`. If you do use `brew tap-new`, delete the `.rb` files before `brew untap`: untapping with the casks present offers to uninstall the real installed apps.
