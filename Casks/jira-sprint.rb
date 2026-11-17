cask "jira-sprint" do
  version "0.5.1"
  sha256 "b0b8c667ada5d875c6a72e2ddf4162da102f0f240ed51566d25ea34af749300a"

  url "https://github.com/abelfubu/jira-sprint/releases/download/v#{version}/Jira-Sprint-#{version}.zip"
  name "Jira Sprint"
  desc "Keyboard-driven native Jira sprint inbox"
  homepage "https://github.com/abelfubu/jira-sprint"

  depends_on formula: "acli"
  depends_on macos: :sonoma

  app "Jira Sprint.app"

  zap trash: "~/.config/jira-sprint"
end
