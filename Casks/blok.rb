# Written by scripts/release.sh from packaging/homebrew/blok.rb.in — edit the template.
cask "blok" do
  version "0.3.0"
  sha256 "bd25da0f24f4015cefb1f4671171f7affe6c7ba543036573653566fd6b64b1d9"

  url "https://github.com/vAntonii/homebrew-tap/releases/download/blok-#{version}/Blok-#{version}.zip"
  name "Blok"
  desc "Menu bar capture app for AI-assisted work"
  homepage "https://github.com/vAntonii/homebrew-tap"

  depends_on macos: :tahoe

  app "Blok.app"

  # A running Blok is quit before it's replaced (brew upgrade); open it again afterwards.
  uninstall quit: "dev.rosok.blok"

  zap trash: [
    "~/.config/blok",
    "~/Library/Application Support/Blok",
    "~/Library/Logs/Blok",
    "~/Library/Preferences/dev.rosok.blok.plist",
  ]

  caveats <<~EOS
    Blok isn't notarized yet. The first time you open it, macOS says it can't check it:
    open System Settings ▸ Privacy & Security and click "Open Anyway" next to Blok.

    Blok then asks for Accessibility access (to capture selected text with ⇧⇧).
    Updates: Blok checks once a day and offers them (Settings ▸ General ▸ Updates),
    or run brew upgrade --cask blok.
  EOS
end
