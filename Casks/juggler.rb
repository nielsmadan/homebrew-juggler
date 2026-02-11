cask "juggler" do
  version "1.0.1"
  sha256 "cf9ec719308f86dd19d87fbcdf96794b3bd6108b940ebd6b9d60db9065384149"

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
