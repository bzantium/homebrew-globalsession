cask "globalsession" do
  version "1.1.3"
  sha256 "5a5291f23f1c23f222cb525ddc3ea2bb23c3f5248095d06660033fd9cc49ed31"

  url "https://github.com/bzantium/globalsession/releases/download/v#{version}/GlobalSession-#{version}.dmg"
  name "GlobalSession"
  desc "macOS menu bar app for monitoring GlobalProtect VPN session status"
  homepage "https://github.com/bzantium/globalsession"

  depends_on macos: ">= :ventura"

  app "GlobalSession.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/GlobalSession.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.ryan.GlobalSession.plist",
  ]
end
