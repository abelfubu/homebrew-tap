cask "gh-inbox" do
  version "0.1.0"
  sha256 "9628890fc49d53802d35f16adae09c6e8f05e436df6f8ba21f2ff71a2b9c2c61"

  url "https://github.com/abelfubu/gh-inbox/releases/download/v#{version}/GitHub-Inbox-#{version}.zip"
  name "GitHub Inbox"
  desc "Keyboard-driven native GitHub pull-request inbox"
  homepage "https://github.com/abelfubu/gh-inbox"

  depends_on formula: "gh"
  depends_on macos: :sonoma

  app "GitHub Inbox.app"

  zap trash: "~/.config/gh-inbox"
end
