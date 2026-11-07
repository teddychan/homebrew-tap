cask "ice-2" do
  version "3.0.0"
  sha256 "fe518e04d1263b55e61780fa79d950842011784699ec315034f4b116b3c99b4a"

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
  depends_on macos: :golden_gate

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
