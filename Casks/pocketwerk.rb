cask "pocketwerk" do
  version "1.1.0"
  sha256 "f59647d18f402b61d4dc81d719eafb650e1e4d27edc8851b300eb232782acd9f"

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
