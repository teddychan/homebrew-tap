cask "ice-2" do
  version "2.0.0"
  sha256 "3bbfbd3b2539d08fd5003e08583e02871ca610f3e163e3b7156850122c9340e8"

  url "https://github.com/teddychan/ice-2/releases/download/v#{version}/Ice-v#{version}.zip",
      verified: "github.com/teddychan/ice-2/"
  name "Ice 2"
  desc "Menu bar manager"
  homepage "https://github.com/teddychan/ice-2"

  depends_on macos: :sonoma

  app "Ice.app"

  uninstall quit: "com.jordanbaird.Ice"

  zap trash: [
    "~/Library/Application Support/com.jordanbaird.Ice",
    "~/Library/Caches/com.jordanbaird.Ice",
    "~/Library/HTTPStorages/com.jordanbaird.Ice",
    "~/Library/Preferences/com.jordanbaird.Ice.plist",
    "~/Library/Saved Application State/com.jordanbaird.Ice.savedState",
  ]
end
