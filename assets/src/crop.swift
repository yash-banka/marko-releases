import CoreGraphics
import ImageIO
import Foundation
import UniformTypeIdentifiers

let a = CommandLine.arguments
guard a.count == 7,
      let src = CGImageSourceCreateWithURL(URL(fileURLWithPath: a[1]) as CFURL, nil),
      let img = CGImageSourceCreateImageAtIndex(src, 0, nil),
      let x = Int(a[3]), let y = Int(a[4]), let w = Int(a[5]), let h = Int(a[6]),
      let cut = img.cropping(to: CGRect(x: x, y: y, width: w, height: h)),
      let dst = CGImageDestinationCreateWithURL(URL(fileURLWithPath: a[2]) as CFURL,
                                                UTType.png.identifier as CFString, 1, nil)
else { print("usage: crop.swift src out x y w h"); exit(1) }
CGImageDestinationAddImage(dst, cut, nil)
CGImageDestinationFinalize(dst)
print("ok \(w)x\(h)")
