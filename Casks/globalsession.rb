cask "globalsession" do
  version "1.1.2"
  sha256 "3df1bf4f4b46e99f5c23f6ddd1e1a0ea2ee74e92e4b9a8f54b8c5a8d9e3f1a2"

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
