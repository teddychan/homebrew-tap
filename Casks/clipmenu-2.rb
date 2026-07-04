cask "clipmenu-2" do
  version "2.17.3"
  sha256 "d2a83cb3760b154c97882438e37f04f6ee97ebdc6abb37d5ea3d9f06ba2f6f6d"

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
