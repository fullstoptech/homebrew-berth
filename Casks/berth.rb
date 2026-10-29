cask "berth" do
  version "1.0.0"
  sha256 "b375167f54d8e7a89556e895b91af35d1333dc5e2dc3c5043c9bd5807ded14ae"

  url "https://github.com/fullstoptech/berth/releases/download/v#{version}/Berth-#{version}-arm64.dmg",
      verified: "github.com/fullstoptech/berth/"
  name "Berth"
  desc "Docker manager for Colima on macOS"
  homepage "https://github.com/fullstoptech/berth"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Berth.app"

  zap trash: [
    "~/Library/Application Support/dev.berth.Berth",
    "~/Library/Caches/berth",
    "~/Library/Caches/dev.berth.app",
    "~/Library/HTTPStorages/dev.berth.app",
    "~/Library/Logs/Berth",
    "~/Library/Preferences/dev.berth.app.plist",
    "~/Library/Saved Application State/dev.berth.app.savedState",
    "~/Library/WebKit/berth",
    "~/Library/WebKit/dev.berth.app",
  ]
end
