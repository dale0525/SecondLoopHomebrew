cask "secondloop" do
  version "1.31.0"
  sha256 "61be8737d79f6a2f231ea8fa95c25e684ca7b5706b71d08e4addec8c18af960a"

  url "https://github.com/dale0525/SecondLoop/releases/download/v1.31.0/SecondLoop-macos-v1.31.0.dmg",
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
