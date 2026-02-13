cask "juggler" do
  version "1.0.4"
  sha256 "46328f7330e37057749a21b3f91ad8cd4d3ec75bd5827ec32347ead7e3eca8e8"

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
