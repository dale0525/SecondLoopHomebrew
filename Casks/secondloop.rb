cask "secondloop" do
  version "1.23.0"
  sha256 "8782524c23b942fa0f97a452d3a73c47314febace7d1a8faed1a1d9c253fc556"

  url "https://github.com/dale0525/SecondLoop/releases/download/v1.23.0/SecondLoop-macos-v1.23.0.dmg",
      verified: "github.com/dale0525/SecondLoop/"
  name "SecondLoop"
  desc "Local-first personal AI assistant with long-term memory"
  homepage "https://secondloop.app"

  auto_updates true
  app "SecondLoop.app"

  uninstall quit: "com.secondloop.secondloop"

  zap trash: [
    "~/Library/Application Support/secondloop",
    "~/Library/Preferences/com.secondloop.secondloop.plist",
    "~/Library/Saved Application State/com.secondloop.secondloop.savedState",
  ]
end
