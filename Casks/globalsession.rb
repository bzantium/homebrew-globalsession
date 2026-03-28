cask "globalsession" do
  version "1.1.2"
  sha256 "f573dc0f338004718bd18626db8eea47c36d1225f1d17437e1c36f307427763e"

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
