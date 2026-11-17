cask "jira-sprint" do
  version "0.1.0"
  sha256 "0aa456f411eb2805fdc74258cf63cbdfb965e2228d798b78c74088bf9f2bdb97"

  url "https://github.com/abelfubu/jira-sprint/releases/download/v#{version}/Jira-Sprint-#{version}.zip"
  name "Jira Sprint"
  desc "Keyboard-driven native Jira sprint inbox"
  homepage "https://github.com/abelfubu/jira-sprint"

  depends_on formula: "acli"
  depends_on macos: :sonoma

  app "Jira Sprint.app"

  zap trash: "~/.config/jira-sprint"
end
