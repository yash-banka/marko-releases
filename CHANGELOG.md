# Marko — Version History

Release notes for every published version of **Marko**, a native macOS Markdown
viewer. Each version links to its download.

**[Download the latest release](https://github.com/yash-banka/marko-releases/releases/latest/download/Marko.dmg)** · [Install instructions](README.md)

## [1.0.1](https://github.com/yash-banka/marko-releases/releases/tag/v1.0.1) — 2026-07-15

Fixes a crash that stopped Marko from opening documents on any Mac other than the one it was built on. The app icon now adapts to light and dark mode.

## [1.0.0](https://github.com/yash-banka/marko-releases/releases/tag/v1.0.0) — 2026-07-12

Marko 1.0 — stable release.

## [0.1.7](https://github.com/yash-banka/marko-releases/releases/tag/v0.1.7) — 2026-07-12

DMG now uses the standard macOS disk image icon.

## [0.1.6](https://github.com/yash-banka/marko-releases/releases/tag/v0.1.6) — 2026-07-12

New app icon, and anonymous error reporting (on by default, opt-out in Settings) to help fix crashes.

## [0.1.5](https://github.com/yash-banka/marko-releases/releases/tag/v0.1.5) — 2026-07-11

Refreshed app icon, and a simpler drag-to-install window for the downloadable DMG.

## [0.1.4](https://github.com/yash-banka/marko-releases/releases/tag/v0.1.4) — 2026-07-11

Verification release to confirm in-app auto-updates work end-to-end.

## [0.1.3](https://github.com/yash-banka/marko-releases/releases/tag/v0.1.3) — 2026-07-11

Visible Find button in the toolbar, print/export PDF now always uses the light appearance (fixes black Mermaid diagrams when printing from dark mode), and in-app auto-updates via Sparkle.

## [0.1.2](https://github.com/yash-banka/marko-releases/releases/tag/v0.1.2) — 2026-07-10

New app icon (markdown page with # / - marks), designed in Icon Composer.

## [0.1.1] — 2026-07-10

Outline sidebar with Overview header, find in page (⌘F), print/export PDF (⌘P), footnotes, definition lists, YAML front matter tables, Apple-style tab menu icons, and a website link in About.

## [0.1.0] — 2026-07-10

First build. Predates public downloads — no release to link.

- Native macOS markdown viewer with Claude-style rendering (SwiftUI shell + WKWebView).
- Offline rendering pipeline: markdown-it (CommonMark + GFM), highlight.js, Mermaid, KaTeX.
- Finder-style window tabs for multiple open documents.
- Light / Dark / System themes and adjustable text size (Settings, ⌘+ / ⌘− / ⌘0).
- Live reload when an open file changes on disk.
- Copy button on code blocks; Reveal in Finder; links open externally.
- Universal binary (Apple Silicon + Intel), packaged as a DMG.
