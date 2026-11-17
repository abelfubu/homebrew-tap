cask "jira-sprint" do
  version "0.2.1"
  sha256 "4eb8a9d0362524127db50ec3eae1c174ecec306d596b3f266a66104baa4a0e35"

  url "https://github.com/abelfubu/jira-sprint/releases/download/v#{version}/Jira-Sprint-#{version}.zip"
  name "Jira Sprint"
  desc "Keyboard-driven native Jira sprint inbox"
  homepage "https://github.com/abelfubu/jira-sprint"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "acli"
  depends_on macos: :sonoma

  app "Jira Sprint.app"

  zap trash: "~/.config/jira-sprint"
end
