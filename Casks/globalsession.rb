cask "globalsession" do
  version "2.0.0"
  sha256 "383bf2bf10944f7c1eebb88b00ef41be21114eb7604fae7ab2c9d9d1edbe4955"

  url "https://github.com/bzantium/globalsession/releases/download/v#{version}/gsession-#{version}.dmg"
  name "gsession"
  desc "macOS menu bar app for monitoring GlobalProtect VPN session status"
  homepage "https://github.com/bzantium/globalsession"

  depends_on macos: ">= :ventura"

  app "gsession.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/gsession.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.ryan.gsession.plist",
  ]
end
