# Marko — Version History

Release notes for every published version of **Marko**, a native macOS Markdown
viewer. Each version links to its download.

**[Download the latest release](https://github.com/yash-banka/marko-releases/releases/latest/download/Marko.dmg)** · [Install instructions](README.md)

## [1.2.0](https://github.com/yash-banka/marko-releases/releases/tag/v1.2.0) — 2026-07-23

**Info panel.** Press ⌘I to see a document's details, its word and heading counts, and its YAML front matter, in a panel beside your text.

Also new:

- Make Marko your default Markdown app, from the first-launch prompt or Settings.
- The outline highlights the section you're reading as you scroll.
- Links between Markdown files work: click a relative link like `./notes.md` and it opens in a new tab.
- Checklists look cleaner, and nested checklists no longer break.
- Headings in any language get working anchor links.

Runs on any Mac with macOS 14 or later.

## [1.1.0](https://github.com/yash-banka/marko-releases/releases/tag/v1.1.0) - 2026-07-19

Document Intelligence, powered by Apple Intelligence. Summarize a document, ask questions about it, or select a passage and have it explained. It all runs on device, so nothing leaves your Mac.

Also new:

* Text zoom in Safari-style steps, from 50% to 300%. Use the new A A control or the usual keyboard shortcuts.
* Open With, to send the file you're reading to your editor in one click. Marko remembers your pick.
* Share now shares the Markdown source itself, so Copy puts the raw text on your clipboard and Mail carries it in the body.
* Choose which toolbar buttons to show, under Settings then Toolbar.
* Send Feedback, in the Help menu.

Fixed: a long URL no longer pushes the page into sideways scrolling.

Document Intelligence needs a Mac with Apple Intelligence. Everything else runs on any Mac with macOS 14 or later.

## [1.0.1](https://github.com/yash-banka/marko-releases/releases/tag/v1.0.1) - 2026-07-15

Fixes a crash that stopped Marko from opening documents on any Mac other than the one it was built on. The app icon now adapts to light and dark mode.

## [1.0.0](https://github.com/yash-banka/marko-releases/releases/tag/v1.0.0) - 2026-07-12

Marko 1.0. The first stable release.

## [0.1.7](https://github.com/yash-banka/marko-releases/releases/tag/v0.1.7) - 2026-07-12

The DMG now uses the standard macOS disk image icon.

## [0.1.6](https://github.com/yash-banka/marko-releases/releases/tag/v0.1.6) - 2026-07-12

New app icon. Adds anonymous error reporting to help fix crashes. It's on by default, and you can turn it off in Settings.

## [0.1.5](https://github.com/yash-banka/marko-releases/releases/tag/v0.1.5) - 2026-07-11

Refreshed app icon, and a simpler drag-to-install window for the downloadable DMG.

## [0.1.4](https://github.com/yash-banka/marko-releases/releases/tag/v0.1.4) - 2026-07-11

A verification release, to confirm that in-app auto-updates work end to end.

## [0.1.3](https://github.com/yash-banka/marko-releases/releases/tag/v0.1.3) - 2026-07-11

Adds a Find button to the toolbar and in-app auto-updates through Sparkle. Printing and PDF export now always use the light appearance, which fixes black Mermaid diagrams when you print from dark mode.

## [0.1.2](https://github.com/yash-banka/marko-releases/releases/tag/v0.1.2) - 2026-07-10

New app icon, a Markdown page with # and - marks, designed in Icon Composer.

## [0.1.1] - 2026-07-10

Adds the outline sidebar with its Overview header, find in page (⌘F), print and PDF export (⌘P), footnotes, definition lists, YAML front matter tables, Apple-style tab menu icons, and a website link in the About panel.

## [0.1.0] - 2026-07-10

First build. Predates public downloads, so there's no release to link.

- Native macOS Markdown viewer with clean, readable rendering (SwiftUI shell plus WKWebView).
- Offline rendering pipeline: markdown-it (CommonMark and GFM), highlight.js, Mermaid, KaTeX.
- Finder-style window tabs for multiple open documents.
- Light, Dark, and System themes, and adjustable text size (Settings, ⌘+ / ⌘− / ⌘0).
- Live reload when an open file changes on disk.
- Copy button on code blocks. Reveal in Finder. Links open externally.
- Universal binary (Apple Silicon and Intel), packaged as a DMG.
