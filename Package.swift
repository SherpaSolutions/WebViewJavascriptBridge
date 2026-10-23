// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "WebViewJavascriptBridge",
    platforms: [.iOS(.v12), .macOS(.v10_13)],
    products: [
        .library(name: "WebViewJavascriptBridge", type: .dynamic, targets: ["WebViewJavascriptBridge"]),
    ],
    targets: [
        .target(
            name: "WebViewJavascriptBridge",
            path: "WebViewJavascriptBridge",
            publicHeadersPath: "include",
            linkerSettings: [.linkedFramework("WebKit")]
        ),
    ]
)
