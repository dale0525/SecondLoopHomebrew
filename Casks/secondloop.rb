cask "secondloop" do
  version "1.25.0"
  sha256 "47b7f37e0732c5b1ec4d2adc8c42db00b622d05f9bfa8061cf71c743903406b8"

  url "https://github.com/dale0525/SecondLoop/releases/download/v1.25.0/SecondLoop-macos-v1.25.0.dmg",
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
