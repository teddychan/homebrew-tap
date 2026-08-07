cask "clipmenu-2" do
  version "2.19.1"
  sha256 "10245cd165e5695d52f3a1771bb4c353294ad702fe86bc9f74295e1f55185e5a"

  url "https://github.com/teddychan/ClipMenu-2/releases/download/v#{version}/ClipMenu-2-v#{version}.zip",
      verified: "github.com/teddychan/ClipMenu-2/"
  name "ClipMenu 2"
  desc "Clipboard-history menu-bar app"
  homepage "https://www.dragonapp.com/"

  auto_updates true
  depends_on macos: :tahoe

  app "ClipMenu 2.app"

  zap trash: [
    "~/Library/Application Support/com.dragonapp.clipmenu-2",
    "~/Library/Caches/com.dragonapp.clipmenu-2",
    "~/Library/HTTPStorages/com.dragonapp.clipmenu-2",
    "~/Library/Preferences/com.dragonapp.clipmenu-2.plist",
  ]
end
