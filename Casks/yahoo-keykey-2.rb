cask "yahoo-keykey-2" do
  version "2.2.0"
  sha256 "1bcb61f0eb495dbb2e87a2caa9ddec461ed112d2797b0254aec815b01033536d"

  url "https://github.com/teddychan/yahoo-keykey-2/releases/download/v#{version}/YahooKeyKey2-#{version}.zip",
      verified: "github.com/teddychan/yahoo-keykey-2/"
  name "Yahoo KeyKey 2"
  desc "Cangjie and Simplex Traditional Chinese input method"
  homepage "https://www.dragonapp.com/yahoo-keykey-2/"

  depends_on arch: :arm64
  # The app requires macOS 26 (Tahoe), enforced by its LSMinimumSystemVersion.
  # Homebrew here has no :tahoe symbol and rejects "26"/comparison strings, so the
  # macOS floor can't be declared yet — re-add `depends_on macos: :tahoe` once supported.

  depends_on :macos

  app "YahooKeyKey2.app", target: "~/Library/Input Methods/YahooKeyKey2.app"

  uninstall quit: "com.dragonapp.inputmethod.yahoo-keykey"

  zap trash: [
    "~/Library/Caches/com.dragonapp.inputmethod.yahoo-keykey",
    "~/Library/HTTPStorages/com.dragonapp.inputmethod.yahoo-keykey",
    "~/Library/Preferences/com.dragonapp.inputmethod.yahoo-keykey.plist",
  ]

  caveats <<~EOS
    Yahoo KeyKey 2 is a Traditional Chinese input method. To finish setup:

      1. Log out and back in — macOS only registers input methods at login.
      2. Open  System Settings ▸ Keyboard ▸ Input Sources ▸ +  ▸ Traditional Chinese
         and add 倉頡 (Cangjie) and/or 速成 (Simplex).
      3. Switch to it with Ctrl-Space.
  EOS
end
