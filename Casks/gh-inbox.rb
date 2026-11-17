cask "gh-inbox" do
  version "0.2.1"
  sha256 "a1bee9171eafb8087b508c4781ae14c68298a6cc9d1a8d1522c65a0c6379b08c"

  url "https://github.com/abelfubu/gh-inbox/releases/download/v#{version}/GitHub-Inbox-#{version}.zip"
  name "GitHub Inbox"
  desc "Keyboard-driven native GitHub pull-request inbox"
  homepage "https://github.com/abelfubu/gh-inbox"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "gh"
  depends_on macos: :sonoma

  app "GitHub Inbox.app"

  zap trash: "~/.config/gh-inbox"
end
