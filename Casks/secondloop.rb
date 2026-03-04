cask "secondloop" do
  version "1.20.3"
  sha256 "0ba3938a892c7cd6d94a39de75915b0755968def182c7ab88e806f1fe0cb676d"

  url "https://github.com/dale0525/SecondLoop/releases/download/v1.20.3/SecondLoop-macos-v1.20.3.dmg",
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
