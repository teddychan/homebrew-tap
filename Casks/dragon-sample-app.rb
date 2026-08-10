cask "dragon-sample-app" do
  version "1.4.0"
  sha256 "f0260048ec649c549ef84d66b2220ccc2d29cecca4abb1bfbc83b4e127f624c1"

  # Releases moved out of dragon-kit: one repository may own only one public vX.Y.Z series, and
  # dragon-kit's belongs to the Swift package. The old `sample-v#{version}` tag family is retired
  # (MAC-APP-RELEASE-LIFECYCLE.md), so both the repo and the tag shape change here. The release CI
  # rewrites only the `version` and `sha256` lines, so this url survives future bumps.
  url "https://github.com/teddychan/dragon-sample-app/releases/download/v#{version}/DragonSampleApp-v#{version}.zip",
      verified: "github.com/teddychan/dragon-sample-app/"
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
