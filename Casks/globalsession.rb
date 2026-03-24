cask "globalsession" do
  version "1.0.0"
  sha256 "dc46b8ead7938df979dc97385160b318659c8dd3c33a1bfcf359a66d6803aff0"

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
