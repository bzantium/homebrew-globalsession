cask "globalsession" do
  version "1.1.0"
  sha256 "f54f94c7ad9fbad350998b71ae7872a79e9e44449419018eb9225f1b7b4d1d9a"

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
