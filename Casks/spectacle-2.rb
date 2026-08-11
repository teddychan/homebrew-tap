cask "spectacle-2" do
  version "2.5.4"
  sha256 "3c3d0d275bf3f38b08d2dba00b2c89b184e772a9460e71d0844add43c785777e"

  url "https://github.com/teddychan/spectacle-2/releases/download/v#{version}/Spectacle2-v#{version}.zip"
  name "Spectacle 2"
  desc "Move and resize windows with keyboard shortcuts"
  homepage "https://github.com/teddychan/spectacle-2"

  auto_updates true
  depends_on macos: :tahoe

  app "Spectacle 2.app"

  uninstall quit: "com.dragonapp.spectacle-2"

  zap trash: [
    "~/Library/Caches/com.dragonapp.spectacle-2",
    "~/Library/HTTPStorages/com.dragonapp.spectacle-2",
    "~/Library/Preferences/com.dragonapp.spectacle-2.plist",
    "~/Library/Preferences/com.dragonapp.spectacle-2.settings.plist",
    "~/Library/Saved Application State/com.dragonapp.spectacle-2.savedState",
  ]
end
