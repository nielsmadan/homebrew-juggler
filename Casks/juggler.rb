cask "juggler" do
  version "1.0.3"
  sha256 "cde08cc09f266cd951046719607a8661bf9638974b1a0400ae982beba3a4ab00"

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
