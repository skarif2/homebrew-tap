cask "sway" do
  version "26.824.0-alpha"
  sha256 "4c153a67fa4493b3448046da90a5435ca046d7c4bba100d6fd20248a382e37b2"

  url "https://github.com/skarif2/sway-releases/releases/download/v#{version}/Sway_#{version}_universal.dmg"
  name "Sway"
  desc "Dev workflow manager: session tree + Claude terminal + editor"
  homepage "https://github.com/skarif2/sway-releases"

  app "Sway.app"

  # Homebrew 6 removed --no-quarantine, and the app is unsigned, so without
  # this Gatekeeper reports it as damaged. Legacy postflight blocks still run
  # in third-party taps; drop this once builds are signed and notarized.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Sway.app"]
  end
end
