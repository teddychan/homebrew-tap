cask "spectacle-2" do
  version "2.0.4"
  sha256 "d6154ecbfcb254e601b6760770777baf7f7ccf551c1f7d6e659b72049f494b0c"

  url "https://github.com/teddychan/spectacle-2/releases/download/v#{version}/Spectacle2-v#{version}.zip"
  name "Spectacle 2"
  desc "Move and resize windows with keyboard shortcuts"
  homepage "https://github.com/teddychan/spectacle-2"

  auto_updates true
  depends_on macos: :tahoe

  app "Spectacle 2.app"

  uninstall quit: "com.dragonapp.spectacle-2"

  zap trash: [
    "~/Library/Application Support/com.dragonapp.spectacle-2",
    "~/Library/Caches/com.dragonapp.spectacle-2",
    "~/Library/HTTPStorages/com.dragonapp.spectacle-2",
    "~/Library/Preferences/com.dragonapp.spectacle-2.plist",
    "~/Library/Saved Application State/com.dragonapp.spectacle-2.savedState",
  ]
end
