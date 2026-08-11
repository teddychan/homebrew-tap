cask "yahoo-keykey-2" do
  version "2.12.0"
  sha256 "33b4da213b0d31d8da026f251fc5bf532eb3c4eceedcdd42e4dfbca89f4de536"

  url "https://github.com/teddychan/yahoo-keykey-2/releases/download/v#{version}/YahooKeyKey2-#{version}.zip",
      verified: "github.com/teddychan/yahoo-keykey-2/"
  name "Yahoo KeyKey 2"
  desc "Cangjie and Simplex Traditional Chinese input method"
  homepage "https://www.dragonapp.com/yahoo-keykey-2/"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "YahooKeyKey2.app", target: "~/Library/Input Methods/YahooKeyKey2.app"

  uninstall quit: "com.dragonapp.inputmethod.yahoo-keykey"

  # Entries are alphabetized because Homebrew's Cask/ArrayAlphabetization cop requires it, so
  # the two legacy bundle ids below sit interleaved rather than grouped at the end.
  zap trash: [
    # user-frequency.json — a per-character record of what the user typed. Name-keyed
    # (UserFrequency.swift:30), so no bundle-id path ever covered it.
    "~/Library/Application Support/YahooKeyKey2",
    "~/Library/Caches/com.dragonapp.inputmethod.yahoo-keykey",
    "~/Library/HTTPStorages/com.dragonapp.inputmethod.yahoo-keykey",
    # com.github.teddychan.inputmethod.YahooKeyKey2 — shipped v1.2.1…v1.7.0.
    "~/Library/HTTPStorages/com.github.teddychan.inputmethod.YahooKeyKey2",
    "~/Library/Preferences/com.dragonapp.inputmethod.yahoo-keykey.plist",
    # com.dragonapp.yahoo-keykey — shipped v1.7.1…v2.0.0. Both legacy ids are verified present
    # on a machine that upgraded through them, so a long-time user still has these.
    "~/Library/Preferences/com.dragonapp.yahoo-keykey.plist",
  ]

  caveats <<~EOS
    Yahoo KeyKey 2 is a Traditional Chinese input method. To finish setup:

      1. Log out and back in — macOS only registers input methods at login.
      2. Open  System Settings ▸ Keyboard ▸ Input Sources ▸ +  ▸ Traditional Chinese
         and add 倉頡 (Cangjie) and/or 速成 (Simplex).
      3. Switch to it with Ctrl-Space.
  EOS
end
