cask "secondloop" do
  version "1.20.0"
  sha256 "16bfc2e94b1e1ab861ddfcba092a2ba382c4beac8fbb9548b19732cad9328a32"

  url "https://github.com/dale0525/SecondLoop/releases/download/v1.20.0/SecondLoop-macos-v1.20.0.dmg",
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
