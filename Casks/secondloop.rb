cask "secondloop" do
  version "1.26.2"
  sha256 "4f1290dc922b80c7d7ac5a41250e8e52f2649a5356054cdf48f81cf74f98a7a6"

  url "https://github.com/dale0525/SecondLoop/releases/download/v1.26.2/SecondLoop-macos-v1.26.2.dmg",
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
