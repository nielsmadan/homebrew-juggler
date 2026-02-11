cask "juggler" do
  version "1.0.2"
  sha256 "2c3a66ddaacdbcbe1b476b21a3e9b1daceb430c53bf8681890af0ab8271dff5f"

  url "https://github.com/nielsmadan/juggler/releases/download/v#{version}/Juggler.zip"
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
