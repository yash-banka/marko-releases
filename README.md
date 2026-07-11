# Marko — Releases

Download & auto-update feed for **Marko**, a native macOS Markdown viewer.

Source code lives in a private repository; this repo publishes only the built app (DMG) and the Sparkle update feed (`appcast.xml`).

## Download

**[Download Marko for Mac](https://github.com/yash-banka/marko-releases/releases/latest/download/Marko.dmg)**

Requires macOS 14+ (Apple Silicon & Intel, universal binary).

### First launch

Marko isn't notarized yet, so macOS Gatekeeper blocks a plain double-click on first run:

1. Open the DMG, drag **Marko** to **Applications**.
2. Right-click (Control-click) **Marko** in Applications → **Open** → **Open**.
   - Or: System Settings → Privacy & Security → scroll down → **Open Anyway**.
3. After that one-time approval it opens normally.

After the first launch, Marko checks for updates automatically and offers to install them in-app — no need to revisit this page.

## Update feed

`appcast.xml` in this repo is the Sparkle feed Marko's built-in updater reads. Each release here corresponds to one entry.
