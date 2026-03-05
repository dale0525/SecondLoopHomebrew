cask "secondloop" do
  version "1.20.4"
  sha256 "530129354de6df897d18371f6b303e70f7c63d48597adb50300095f07d2772f2"

  url "https://github.com/dale0525/SecondLoop/releases/download/v1.20.4/SecondLoop-macos-v1.20.4.dmg",
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
