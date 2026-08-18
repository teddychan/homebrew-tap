cask "dragon-sample-app" do
  version "1.4.8"
  sha256 "183f4ae3295a796829c2cee82c7a6e970f9523a89280413df8ab8b6ee4a101a2"

  # Releases moved out of dragon-kit: one repository may own only one public vX.Y.Z series, and
  # dragon-kit's belongs to the Swift package, so the sample-v* family is retired
  # (dragon-kit/docs/MAC-APP-RELEASE-LIFECYCLE.md). Both the repo and the tag shape change here.
  #
  # This lagged one release behind by mistake. The release CI rewrites only the `version` and
  # `sha256` lines, so when v1.4.2 shipped from the new repo it bumped those against this stale
  # url and left the cask resolving to a 404. Holding the url fix back to avoid a brief window
  # where 1.4.0 was unfetchable produced a worse, live breakage at the current version.
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
