import AppKit
import WebKit

// Renders an HTML file to a PNG at an exact pixel size. The page is designed
// viewport-relative, so it fills whatever size we ask for — used to produce the
// DMG background at 1x (640x480) and 2x (1280x960).
// Usage: swift render-background.swift <html> <out.png> <width> <height>

let args = CommandLine.arguments
guard args.count == 5, let w = Double(args[3]), let h = Double(args[4]) else {
    FileHandle.standardError.write(Data("usage: render-background.swift <html> <out.png> <w> <h>\n".utf8))
    exit(2)
}
let htmlURL = URL(fileURLWithPath: args[1])
let outPath = args[2]

final class Snapper: NSObject, WKNavigationDelegate {
    let web: WKWebView
    let out: String
    let size: NSSize
    init(out: String, size: NSSize) {
        let cfg = WKWebViewConfiguration()
        self.web = WKWebView(frame: NSRect(origin: .zero, size: size), configuration: cfg)
        self.out = out
        self.size = size
        super.init()
        web.navigationDelegate = self
    }
    func webView(_ webView: WKWebView, didFinish nav: WKNavigation!) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.35) {
            let cfg = WKSnapshotConfiguration()
            cfg.rect = NSRect(origin: .zero, size: self.size)
            self.web.takeSnapshot(with: cfg) { image, error in
                guard let image, let tiff = image.tiffRepresentation,
                    let rep = NSBitmapImageRep(data: tiff),
                    let png = rep.representation(using: .png, properties: [:])
                else {
                    FileHandle.standardError.write(Data("snapshot failed: \(error?.localizedDescription ?? "?")\n".utf8))
                    exit(1)
                }
                try! png.write(to: URL(fileURLWithPath: self.out))
                print("wrote \(self.out) (\(Int(self.size.width))x\(Int(self.size.height)))")
                exit(0)
            }
        }
    }
}

let app = NSApplication.shared
let snap = Snapper(out: outPath, size: NSSize(width: w, height: h))
snap.web.loadFileURL(htmlURL, allowingReadAccessTo: htmlURL.deletingLastPathComponent())
app.run()
