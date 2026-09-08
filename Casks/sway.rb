cask "sway" do
  version "26.908.0-alpha"
  sha256 "78333b17f4b586ead4493d9c5435cf97d2b4c5e5d747c07a6ba307e22bf5f3b8"

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
