cask "dragon-sample-app" do
  version "1.4.0"
  sha256 "f0260048ec649c549ef84d66b2220ccc2d29cecca4abb1bfbc83b4e127f624c1"

  url "https://github.com/teddychan/dragon-kit/releases/download/sample-v#{version}/DragonSampleApp-sample-v#{version}.zip",
      verified: "github.com/teddychan/dragon-kit/"
  name "Dragon Sample App"
  desc "Reference menu-bar app showcasing the DragonKit modules"
  homepage "https://www.dragonapp.com/"

  auto_updates true
  depends_on macos: :tahoe

  app "Dragon Sample App.app"

  # See clipmenu-2: without quit:, cfprefsd resurrects the plist --zap just deleted.
  uninstall quit: "com.dragonapp.dragon-sample-app"

  zap trash: [
    "~/Library/Caches/com.dragonapp.dragon-sample-app",
    "~/Library/HTTPStorages/com.dragonapp.dragon-sample-app",
    "~/Library/Preferences/com.dragonapp.dragon-sample-app.plist",
    # DragonSettingsStore's suite (<bundle id> + ".settings") holds 100% of the app's settings
    # and was missing, so --zap left every preference behind.
    "~/Library/Preferences/com.dragonapp.dragon-sample-app.settings.plist",
    "~/Library/Saved Application State/com.dragonapp.dragon-sample-app.savedState",
  ]
end
