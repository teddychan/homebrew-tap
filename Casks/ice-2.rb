cask "ice-2" do
  version "2.13.0"
  sha256 "d2691269184ab42b980afbf054838b8fb579b2d3045d62a2010a4786dc5b51dc"

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
