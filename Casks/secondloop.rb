cask "secondloop" do
  version "1.19.0"
  sha256 "86bfcc8d9909b4451a938ac6375cf77388a1858d70f1cc6f87a353a5062d0bb6"

  url "https://github.com/dale0525/SecondLoop/releases/download/v1.19.0/SecondLoop-macos-v1.19.0.dmg",
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
