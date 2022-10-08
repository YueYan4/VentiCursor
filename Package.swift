// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

//import PackageDescription
//
//let package = Package(
//    name: "cursor",
//    products: [
//        // Products define the executables and libraries a package produces, and make them visible to other packages.
//        .library(
//            name: "cursor",
//            targets: ["cursor"]),
//    ],
//    dependencies: [
//        // Dependencies declare other packages that this package depends on.
//        // .package(url: /* package url */, from: "1.0.0"),
//    ],
//    targets: [
//        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
//        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//        .target(
//            name: "cursor",
//            dependencies: []),
//        .testTarget(
//            name: "cursorTests",
//            dependencies: ["cursor"]),
//    ]
//)
import Cocoa;
import AppKit;
import SwiftUI;


class Cursor : NSView {
    
//    init(
//
//        image newImage: NSImage,
//        hotSpot point: NSPoint
//    ){}
    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    

//    override func mouseEntered(with event: NSEvent) {
//        let image = AppKit.NSImage(named: "venticursor1")
//        let cursor = AppKit.NSCursor(image: image!, hotSpot: .zero)
//        addCursorRect(self.bounds, cursor: cursor)
//    }
    override func resetCursorRects() {
        let image = AppKit.NSImage(named: "venticursor1")
        let cursor = AppKit.NSCursor(image: image!, hotSpot: .zero)
        addCursorRect(self.bounds, cursor: cursor)
    }
    let customCursor = AppKit.NSCursor(image:AppKit.NSImage(named:"venticursor1"), hotSpoit: .zero)
    DispatchQueue.main.async {
        self.customCursor.set()
    }
//    NSSize cursorSize = NSMakeSize(10, 10);
//
//    NSImage *cursorImg = [[NSImage alloc] initWithSize: cursorSize];
//    // Draw any color on the image
//    [cursorImg lockFocus];
//    [[NSColor blackColor] setFill];
//    [NSBezierPath fillRect:NSMakeRect(0, 0, cursorSize.width, cursorSize.height)];
//    [cursorImg unlockFocus];
//    cursor = [[NSCursor alloc] initWithImage:cursorImg hotSpot:NSMakePoint(cursorSize.width/2.0, cursorSize.height/2.0)];
//
//    // you now have a cursor. You must set it (e.g. in mouseEntered-method of a view:
//
//    [cursor setOnMouseEntered:YES];
//    [self.view addTrackingRect:self.view.bounds owner:cursor userData:NULL assumeInside:YES];

}

