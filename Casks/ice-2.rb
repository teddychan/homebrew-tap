cask "ice-2" do
  version "2.12.1"
  sha256 "bf758de7649c92240b84ed249d244e1e5b9a7217d224e810a035e746d81a623a"

  url "https://github.com/teddychan/ice-2/releases/download/v#{version}/Ice-2-v#{version}.zip"
  name "Ice 2"
  desc "Menu bar manager"
  homepage "https://github.com/teddychan/ice-2"

  livecheck do
    url :url
    strategy :github_latest
  end

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
