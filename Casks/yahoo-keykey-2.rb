cask "yahoo-keykey-2" do
  version "1.5.0"
  sha256 "c8a8b05bf380b64b72bf6319433347aead9a23b1e136067789dfcee32d1f4a7f"

  url "https://github.com/teddychan/yahoo-keykey-2/releases/download/v#{version}/YahooKeyKey2-#{version}.zip",
      verified: "github.com/teddychan/yahoo-keykey-2/"
  name "Yahoo KeyKey 2"
  desc "Cangjie and Simplex Traditional Chinese input method"
  homepage "https://www.dragonapp.com/yahoo-keykey-2/"

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
