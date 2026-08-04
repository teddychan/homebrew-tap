cask "dragon-sample-app" do
  version "1.1.0"
  sha256 "d5da3fa1492e98f4b696570da54d5e60c3f30f38638aeca32e29621c972e8f16"

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
