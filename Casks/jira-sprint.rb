cask "jira-sprint" do
  version "0.4.1"
  sha256 "82dbc72706cdc90b0fc0b766438d42713c7a2334abdaf98878fa2c0d8444d6ef"

  url "https://github.com/abelfubu/jira-sprint/releases/download/v#{version}/Jira-Sprint-#{version}.zip"
  name "Jira Sprint"
  desc "Keyboard-driven native Jira sprint inbox"
  homepage "https://github.com/abelfubu/jira-sprint"

  depends_on formula: "acli"
  depends_on macos: :sonoma

  app "Jira Sprint.app"

  zap trash: "~/.config/jira-sprint"
end
