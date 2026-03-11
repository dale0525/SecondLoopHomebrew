cask "secondloop" do
  version "1.24.0"
  sha256 "f1a829d2bdb8a06fc34064fe4085a46437176884fa83a0cf3bc418ae9ef9d1a0"

  url "https://github.com/dale0525/SecondLoop/releases/download/v1.24.0/SecondLoop-macos-v1.24.0.dmg",
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
