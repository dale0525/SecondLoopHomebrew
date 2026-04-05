cask "secondloop" do
  version "1.28.2"
  sha256 "2fa0366e7a11c7c92a28e3f126abcd1c457ba5ef9f40ed57fe3c201563300056"

  url "https://github.com/dale0525/SecondLoop/releases/download/v1.28.2/SecondLoop-macos-v1.28.2.dmg",
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
