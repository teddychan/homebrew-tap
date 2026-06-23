cask "yahoo-keykey-2" do
  version "1.3.1"
  sha256 "5dea12b03241524a45ee258cb0760786376c535dad45f6daa4c0e28bff2d9272"

  url "https://github.com/teddychan/yahoo-keykey-2/releases/download/v#{version}/YahooKeyKey2-#{version}.dmg",
      verified: "github.com/teddychan/yahoo-keykey-2/"
  name "Yahoo KeyKey 2"
  desc "Cangjie and Simplex Traditional Chinese input method"
  homepage "https://www.dragonapp.com/keykey/"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "YahooKeyKey2.app", target: "~/Library/Input Methods/YahooKeyKey2.app"

  uninstall quit: "com.github.teddychan.inputmethod.YahooKeyKey2"

  zap trash: [
    "~/Library/Caches/com.github.teddychan.inputmethod.YahooKeyKey2",
    "~/Library/HTTPStorages/com.github.teddychan.inputmethod.YahooKeyKey2",
    "~/Library/Preferences/com.github.teddychan.inputmethod.YahooKeyKey2.plist",
  ]

  caveats <<~EOS
    Yahoo KeyKey 2 is a Traditional Chinese input method. To finish setup:

      1. Log out and back in — macOS only registers input methods at login.
      2. Open  System Settings ▸ Keyboard ▸ Input Sources ▸ +  ▸ Traditional Chinese
         and add 倉頡 (Cangjie) and/or 速成 (Simplex).
      3. Switch to it with Ctrl-Space.
  EOS
end
