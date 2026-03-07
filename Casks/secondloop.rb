cask "secondloop" do
  version "1.21.0"
  sha256 "607fa12d35bf80a15c482867493dd4272a3243f0411da7176d88bb8c001665fb"

  url "https://github.com/dale0525/SecondLoop/releases/download/v1.21.0/SecondLoop-macos-v1.21.0.dmg",
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
