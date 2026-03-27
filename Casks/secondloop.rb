cask "secondloop" do
  version "1.27.0"
  sha256 "7cf8a73597b74ec492b3bf525244077b2488485f27bcd367ee2fcb64d7f267a6"

  url "https://github.com/dale0525/SecondLoop/releases/download/v1.27.0/SecondLoop-macos-v1.27.0.dmg",
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
