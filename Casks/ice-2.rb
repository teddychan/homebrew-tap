cask "ice-2" do
  version "2.16.3"
  sha256 "168682e8371378ad5de020fafbc5eae080c0e2cde064595e0716a0777da7c1b1"

  url "https://github.com/teddychan/ice-2-macos/releases/download/v#{version}/Ice-2-v#{version}.zip"
  name "Ice 2"
  desc "Menu bar manager"
  homepage "https://github.com/teddychan/ice-2-macos"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Ice 2.app"

  uninstall quit: "com.dragonapp.ice"

  zap trash: [
    "~/Library/Application Support/com.dragonapp.ice",
    "~/Library/Caches/com.dragonapp.ice",
    "~/Library/HTTPStorages/com.dragonapp.ice",
    "~/Library/Preferences/com.dragonapp.ice.plist",
    "~/Library/Saved Application State/com.dragonapp.ice.savedState",
  ]
end
