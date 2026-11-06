cask "handfree" do
  version "3.1.0"
  sha256 "43d88e23c952971a58c09813ecee94fc43f44692f00145c3ccac388ea2308790"

  url "https://github.com/teddychan/www.dragonapp.com/releases/download/handfree-macos-v#{version}/HandFree-#{version}.zip"
  name "HandFree"
  desc "Dictation that types cleaned-up text where the cursor is"
  homepage "https://www.dragonapp.com/"

  livecheck do
    url "https://www.dragonapp.com/handfree-macos/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "HandFree.app"

  uninstall quit: "com.dragonapp.handfree"

  # Settings and history live in ~/.config/handfree (fallback Application Support/HandFree, which also holds
  # the Local speech recognition runtime). API keys are in the Keychain, which zap cannot reach. The Local
  # model cache in ~/.cache/huggingface is shared with other tools, so it is left alone.
  zap trash: [
    "~/.config/handfree",
    "~/Library/Application Support/HandFree",
    "~/Library/Caches/com.dragonapp.handfree",
    "~/Library/Group Containers/group.com.dragonapp.handfree.shared",
    "~/Library/HTTPStorages/com.dragonapp.handfree",
    "~/Library/Logs/HandFree.log",
    "~/Library/Preferences/com.dragonapp.handfree.plist",
    "~/Library/Saved Application State/com.dragonapp.handfree.savedState",
  ]
end
