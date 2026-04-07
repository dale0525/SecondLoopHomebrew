cask "secondloop" do
  version "1.28.3"
  sha256 "3751cee2ac873d53513012ebbccbdd668df49f69ad4df44aa3427ea0f106068b"

  url "https://github.com/dale0525/SecondLoop/releases/download/v1.28.3/SecondLoop-macos-v1.28.3.dmg",
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
