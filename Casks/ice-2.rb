cask "ice-2" do
  version "2.17.0"
  sha256 "e10987a8536858bcff72a1b396819390b9537017bf11c05e9b59186bd62633be"

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
