cask "secondloop" do
  version "1.33.0"
  sha256 "f59c2fc162369b5674067fd02cd40dba5d70193bf75653f53ff8e53b1ee498b9"

  url "https://github.com/dale0525/SecondLoop/releases/download/v1.33.0/SecondLoop-macos-v1.33.0.dmg",
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
