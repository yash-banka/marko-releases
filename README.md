<h1 align="center">Marko</h1>

<p align="center">
  A fast, native Markdown viewer for macOS.<br>
  Free, private, universal.
</p>

<p align="center">
  <a href="https://github.com/yash-banka/marko-releases/releases/latest"><img alt="Latest release" src="https://img.shields.io/github/v/release/yash-banka/marko-releases?label=release&color=0a84ff"></a>
  <img alt="macOS 14+" src="https://img.shields.io/badge/macOS-14%2B-lightgrey">
  <img alt="Universal binary" src="https://img.shields.io/badge/universal-Apple%20Silicon%20%2B%20Intel-lightgrey">
</p>

<p align="center">
  <strong><a href="https://github.com/yash-banka/marko-releases/releases/latest/download/Marko.dmg">Download Marko for Mac</a></strong>
</p>

<p align="center">
  <img src="assets/hero-light.png" alt="Marko in light mode: outline sidebar, YAML front matter rendered as a table, headings, prose and a GFM table" width="900">
</p>

## What it does

Opens `.md` files and renders them properly — clean typography, syntax-highlighted
code, tables, diagrams and math — instead of showing you raw plain text.

- **Native** — Swift and SwiftUI, with Finder-style window tabs
- **Private** — your documents render on your Mac and never leave it. Marko
  checks for updates, and can send anonymised error reports, which you can turn
  off in Settings
- **Viewer only** — Marko never modifies your files
- **Live reload** — edit in your editor, the preview updates as you save
- **Document Intelligence** — summarize a document, ask it questions, or explain
  a selected passage, all on device (needs a Mac with Apple Intelligence)
- **Outline sidebar** — jump to any heading
- **Find in page** (⌘F) and **Print / Export PDF** (⌘P)
- **Open With** — hand the file to your real editor in one click
- **Share** the Markdown source itself, so Copy gives you the raw text
- **Renders** GFM tables and task lists, footnotes, definition lists, YAML front
  matter, [Mermaid](https://mermaid.js.org) diagrams and [KaTeX](https://katex.org) math
- **Light, Dark and System** themes, with text zoom from 50% to 300%
- **Customizable toolbar** — choose which buttons you want
- **Universal** binary (Apple Silicon and Intel), and compact

<p align="center">
  <img src="assets/hero-dark.png" alt="Marko in dark mode: a Mermaid flowchart, KaTeX inline and display math, and the start of a syntax-highlighted code block" width="900">
</p>

## Document Intelligence

Marko can summarize the document you are reading, answer questions about it, and
explain any passage you select. It runs on Apple Intelligence, on device, so the
document is never uploaded anywhere.

Open it with ⌥⌘I, or select text, right-click, and choose **Explain Selection**.

Needs a Mac that supports Apple Intelligence. Everything else in Marko works on
any Mac running macOS 14 or later.

<p align="center">
  <img src="assets/hero-intelligence.png" alt="The Document Intelligence panel open beside a document, showing a generated TL;DR and a list of key points" width="900">
</p>

## Install

1. [Download `Marko.dmg`](https://github.com/yash-banka/marko-releases/releases/latest/download/Marko.dmg), open it, and drag **Marko** to **Applications**.
2. Open Marko from Applications. macOS will refuse to open it and say the
   developer can't be verified — Marko isn't notarized by Apple yet. Click
   **Done**. *Do not click "Move to Trash".*
3. Open **System Settings → Privacy & Security**, scroll to Security, and click
   **Open Anyway**.

You only do this once. After that Marko opens normally, and it keeps itself
updated from within the app.

Requires macOS 14 or later.

## Version history

See [CHANGELOG.md](CHANGELOG.md) for release notes.

## About this repository

This repo publishes the built app and the [Sparkle](https://sparkle-project.org)
update feed (`appcast.xml`) that Marko's built-in updater reads. Marko's source
code lives in a private repository.

## License

Marko is free to use.

© 2026 Yash Banka. All rights reserved. Marko's source code is not currently
open source.
