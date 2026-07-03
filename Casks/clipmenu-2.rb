cask "clipmenu-2" do
  version "2.16.1"
  sha256 "132ac47fc1ece2ad0f3eafc4b56847a366967e652cca38ec6dbaadd519a436fc"

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
