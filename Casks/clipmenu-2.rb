cask "clipmenu-2" do
  version "2.24.2"
  sha256 "04a1b7c50cfe49e67f8ce3925959f360a0948f65ad80cefd24ca38b7842b6f4f"

  url "https://github.com/teddychan/clipmenu-2-macos/releases/download/v#{version}/ClipMenu-2-v#{version}.zip"
  name "ClipMenu 2"
  desc "Clipboard-history menu-bar app"
  homepage "https://www.dragonapp.com/"

  auto_updates true
  depends_on macos: :tahoe

  app "ClipMenu 2.app"

  # Without quit:, --zap trashes the plist while the app is still running and cfprefsd
  # rewrites it on exit — the user is told their preferences were removed and they come back.
  uninstall quit: "com.dragonapp.clipmenu-2"

  zap trash: [
    # ClipMenu 2 keys its data by DISPLAY NAME, not bundle id (AppStore.folder, App.swift:38):
    # the SwiftData history/snippets stores, their -wal/-shm/_SUPPORT siblings, and actions.plist.
    # The old bundle-id path below it never existed, so --zap was deleting nothing and leaving
    # the entire clipboard history — 160 MB here — on disk after a "complete" uninstall.
    "~/Library/Application Support/ClipMenu",
    "~/Library/Caches/com.dragonapp.clipmenu-2",
    "~/Library/HTTPStorages/com.dragonapp.clipmenu-2",
    "~/Library/Preferences/com.dragonapp.clipmenu-2.plist",
    "~/Library/Saved Application State/com.dragonapp.clipmenu-2.savedState",
  ]
end
