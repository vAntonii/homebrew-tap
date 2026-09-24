# vAntonii's Homebrew tap

## Blok

A macOS menu bar capture app for AI-assisted work: capture the selected text with ⇧⇧, keep
snippets, prompts and to-dos in sections, and hand them to Claude. macOS 26 or later.

```sh
brew install --cask vantonii/tap/blok
```

- **First launch:** Blok isn't notarized yet, so macOS says it can't check it. Open System
  Settings ▸ Privacy & Security and click **Open Anyway** next to Blok (once).
- **Accessibility:** Blok asks for it, to capture selected text.
- **Updates:** `brew upgrade --cask blok`, then open Blok again.
- **Uninstall:** `brew uninstall --cask blok` keeps your notes; add `--zap` to delete them too.

Releases of this repo hold the app itself.
