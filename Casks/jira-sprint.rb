cask "jira-sprint" do
  version "0.2.2"
  sha256 "ad565aa88579745aa9977b5d351bb1a45babab23b1ed09243dcd7438c978b44d"

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
