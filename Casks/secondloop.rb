cask "secondloop" do
  version "1.30.0"
  sha256 "843c97f0c1b221f3db1f435ea170a2a8fcf37a747668a600d5572192d4e54509"

  url "https://github.com/dale0525/SecondLoop/releases/download/v1.30.0/SecondLoop-macos-v1.30.0.dmg",
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
