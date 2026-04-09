cask "secondloop" do
  version "1.28.4"
  sha256 "ccee665ecb77b7f09b73dc7249c16fcc971422c67dfa25c120d7edfb07d9fa34"

  url "https://github.com/dale0525/SecondLoop/releases/download/v1.28.4/SecondLoop-macos-v1.28.4.dmg",
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
