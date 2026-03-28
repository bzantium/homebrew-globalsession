cask "globalsession" do
  version "1.1.1"
  sha256 "bdac923a291b8221fb7066927a6d362fffe3e47988aebee653b3bb9d90e083f6"

  url "https://github.com/bzantium/globalsession/releases/download/v#{version}/GlobalSession-#{version}.dmg"
  name "GlobalSession"
  desc "macOS menu bar app for monitoring GlobalProtect VPN session status"
  homepage "https://github.com/bzantium/globalsession"

  depends_on macos: ">= :ventura"

  app "GlobalSession.app"

  zap trash: [
    "~/Library/Preferences/com.ryan.GlobalSession.plist",
  ]
end
