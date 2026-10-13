cask "pocketwerk" do
  version "1.0.0"
  sha256 "259170dc2d7d3936686a0776d68c22a0d68bca71dd3a68b725b6a4b74a9c0034"

  url "https://github.com/DigitalIQ/pocketwerk/releases/download/v#{version}/Pocketwerk-#{version}.dmg"
  name "Pocketwerk"
  desc "Themed app groups that pop out of their own Dock icons, plus switchable Dock layouts"
  homepage "https://digitaliq.github.io/pocketwerk/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "Pocketwerk.app"

  zap trash: [
    "~/Applications/Pocketwerk",
    "~/Library/Application Support/Pocketwerk",
  ]

  caveats <<~EOS
    Pocketwerk is not notarized by Apple. On first launch macOS blocks it.
    Open System Settings > Privacy & Security and click "Open Anyway".
  EOS
end
