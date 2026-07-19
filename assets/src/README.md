# Asset sources

How `assets/social-preview.png` is made, so it can be regenerated rather than
reverse-engineered from a PNG.

- `social.html` — the layout. The app icon and the app screenshot are inlined as
  base64, so the file is self-contained but large.
- `render.swift` — renders an HTML file to PNG through WKWebView.
- `crop.swift` — crops a PNG.

## Regenerating the social preview

```sh
swiftc -O render.swift -o render
./render social.html social-2x.png 1280 640
sips -Z 1280 social-2x.png            # GitHub wants 1280x640
cp social-2x.png ../social-preview.png
```

Then upload it by hand: **Settings → General → Social preview**. GitHub has no
API for this.

## The hero screenshots

Captured from the running app with `screencapture -o -l <windowID>`, which grabs
one window and keeps its shadow. Use the window id, never `-R` with screen
coordinates: that captures whatever happens to be at those coordinates.

`hero-light.png` and `hero-dark.png` deliberately show **different parts** of
`Samples/welcome.md`, so the two images aren't near-duplicates. Window sized to
1100x720 before capture, then scaled to 1800px wide.
