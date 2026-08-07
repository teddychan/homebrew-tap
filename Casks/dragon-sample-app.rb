cask "dragon-sample-app" do
  version "1.3.0"
  sha256 "3dbe95bae8831b1652bc730d68e5063700fcaa20b332fd071f61917f3aeab617"

  url "https://github.com/teddychan/dragon-kit/releases/download/sample-v#{version}/DragonSampleApp-sample-v#{version}.zip",
      verified: "github.com/teddychan/dragon-kit/"
  name "Dragon Sample App"
  desc "Reference menu-bar app showcasing the DragonKit modules"
  homepage "https://www.dragonapp.com/"

  auto_updates true
  depends_on macos: :tahoe

  app "Dragon Sample App.app"

  zap trash: [
    "~/Library/Application Support/com.dragonapp.dragon-sample-app",
    "~/Library/Caches/com.dragonapp.dragon-sample-app",
    "~/Library/HTTPStorages/com.dragonapp.dragon-sample-app",
    "~/Library/Preferences/com.dragonapp.dragon-sample-app.plist",
  ]
end
