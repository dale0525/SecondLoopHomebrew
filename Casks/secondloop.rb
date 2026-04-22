cask "secondloop" do
  version "1.32.0"
  sha256 "a1885647ca14b510477f2ed05825d5619872b9cdec6befc78c779c3682f7010f"

  url "https://github.com/dale0525/SecondLoop/releases/download/v1.32.0/SecondLoop-macos-v1.32.0.dmg",
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
