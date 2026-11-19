cask "gh-inbox" do
  version "0.2.2"
  sha256 "a8e369e0b50efad0ae9f277193ac2f7db7d1d2c41b4858bfd664cbf8c72b73f4"

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
