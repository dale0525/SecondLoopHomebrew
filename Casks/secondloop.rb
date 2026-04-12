cask "secondloop" do
  version "1.29.0"
  sha256 "411c9dfd247dbbc2dd7324d81390c4feb85d15f3dc409ba5378dab0835e4ea86"

  url "https://github.com/dale0525/SecondLoop/releases/download/v1.29.0/SecondLoop-macos-v1.29.0.dmg",
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
