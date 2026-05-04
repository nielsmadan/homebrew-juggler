cask "juggler" do
  version "1.3.0"
  sha256 "b0e735617f591d5c3b307d31eb1064ba6eb1bea936c9b9eef532288ca3f95e31"

  url "https://github.com/nielsmadan/juggler/releases/download/v#{version}/Juggler.dmg"
  name "Juggler"
  desc "Global hotkey navigation for Claude Code sessions"
  homepage "https://github.com/nielsmadan/juggler"

  depends_on macos: ">= :sonoma"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Juggler.app"

  zap trash: [
    "~/Library/Application Support/Juggler",
    "~/Library/Preferences/com.nielsmadan.Juggler.plist",
    "~/Library/Caches/com.nielsmadan.Juggler",
  ]
end
