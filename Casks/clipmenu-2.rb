cask "clipmenu-2" do
  version "2.9.1"
  sha256 "3671b5e1073eb8d82f702f4758a2635397de48c19b0f77c2a91de64db813f547"

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
