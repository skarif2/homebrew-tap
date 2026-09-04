cask "sway" do
  version "26.904.0-alpha"
  sha256 "4af3a1016de94fff9b151d2231f8bff46fc24ddf8b2f9237966402e32f0d8c1d"

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
