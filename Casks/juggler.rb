cask "juggler" do
  version "1.4.0"
  sha256 "c78c47fc00553a0dd94037aeaa20447f629d22f49eb9d5f9e7acbbcb911987c9"

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
