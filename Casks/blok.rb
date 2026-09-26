# Written by scripts/release.sh from packaging/homebrew/blok.rb.in — edit the template.
cask "blok" do
  version "0.4.2"
  sha256 "c28964f4a22a23bbcd36d98665a68e23bf2ec0096da829cbd9394ffe98958c32"

  url "https://github.com/vAntonii/homebrew-tap/releases/download/blok-#{version}/Blok-#{version}.zip"
  name "Blok"
  desc "Capture selected text and screenshots for AI work, in a floating panel"
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

    To use your notes from Claude Code: in Blok, … ▸ Connect to Claude… copies the
    setup command; paste it in Terminal.
  EOS
end
