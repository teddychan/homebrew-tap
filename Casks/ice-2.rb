cask "ice-2" do
  version "2.9.1"
  sha256 "7f42f6b1ee9ab72f2bc03dbc1cdb7288f155a80f5c09a1ac63210804f2e62e47"

  url "https://github.com/teddychan/ice-2/releases/download/v#{version}/Ice-2-v#{version}.zip"
  name "Ice 2"
  desc "Menu bar manager"
  homepage "https://github.com/teddychan/ice-2"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Ice 2.app"

  uninstall quit: "com.jordanbaird.Ice"

  zap trash: [
    "~/Library/Application Support/com.jordanbaird.Ice",
    "~/Library/Caches/com.jordanbaird.Ice",
    "~/Library/HTTPStorages/com.jordanbaird.Ice",
    "~/Library/Preferences/com.jordanbaird.Ice.plist",
    "~/Library/Saved Application State/com.jordanbaird.Ice.savedState",
  ]
end
