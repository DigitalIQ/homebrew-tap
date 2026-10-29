cask "pocketwerk" do
  version "1.2.0"
  sha256 "650c8d7a0d8e1483dcfb9474525b319a2f5f119067f118359e110f4b845accff"

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
