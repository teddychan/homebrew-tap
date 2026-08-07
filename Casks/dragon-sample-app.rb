cask "dragon-sample-app" do
  version "1.3.1"
  sha256 "eeee1c1ee424b2237dd0808ea462a193c673b85b1b433185bf97ced3eb1cd3e8"

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
