cask "spectacle-2" do
  version "2.4.1"
  sha256 "97f2483fbf4f52eb51dc6c171069f2ff978026576b6e1136b1d94540bfceffa9"

  url "https://github.com/teddychan/spectacle-2/releases/download/v#{version}/Spectacle2-v#{version}.zip"
  name "Spectacle 2"
  desc "Move and resize windows with keyboard shortcuts"
  homepage "https://github.com/teddychan/spectacle-2"

  auto_updates true
  depends_on macos: :tahoe

  app "Spectacle 2.app"

  uninstall quit: "com.dragonapp.spectacle-2"

  zap trash: [
    "~/Library/Application Support/Spectacle 2",
    "~/Library/Caches/com.dragonapp.spectacle-2",
    "~/Library/HTTPStorages/com.dragonapp.spectacle-2",
    "~/Library/Preferences/com.dragonapp.spectacle-2.plist",
    "~/Library/Preferences/com.dragonapp.spectacle-2.settings.plist",
    "~/Library/Saved Application State/com.dragonapp.spectacle-2.savedState",
  ]
end
