# Written by scripts/release.sh from packaging/homebrew/blok.rb.in — edit the template.
cask "blok" do
  version "0.7.13"
  sha256 "0de34789261bf1605897bfd3de762f54fbaaed8d228d6630d488c048e0604d76"

  url "https://github.com/vAntonii/homebrew-tap/releases/download/blok-#{version}/Blok-#{version}.zip"
  name "Blok"
  desc "Capture selected text and screenshots for AI work, in a floating panel"
  homepage "https://github.com/vAntonii/homebrew-tap"

  depends_on macos: :tahoe
  # Blok updates itself (Settings ▸ General ▸ Updates): Homebrew leaves it to Blok.
  auto_updates true

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
    Blok asks for Accessibility access (to capture selected text with ⇧⇧).
    Updates: Blok checks once a day and installs them itself (Settings ▸ General ▸ Updates).

    To use your notes from Claude Code: in Blok, … ▸ Connect to Claude… copies the
    setup command; paste it in Terminal.
  EOS
end
