cask "secondloop" do
  version "1.32.1"
  sha256 "969c36e78272ece1107cf9b6f036ad70ca3682e1408f1c6815d5191fda99a106"

  url "https://github.com/dale0525/SecondLoop/releases/download/v1.32.1/SecondLoop-macos-v1.32.1.dmg",
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
