cask "gh-inbox" do
  version "0.2.3"
  sha256 "7595aae1bc7d8ad2520b89472d3a1936c012d3ca94cf1f34073c7377b48e065f"

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
