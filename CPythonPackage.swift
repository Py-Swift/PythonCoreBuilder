// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let dev = false

let pythonBinaryTarget: Target = if dev {
    .binaryTarget(
        name: "Python",
        url: "https://github.com/Py-Swift/CPython/releases/download/#VERSION#/Python.zip",
        checksum: "#SHA#"
    )
} else {
    .binaryTarget(
        name: "Python",
        path: "Frameworks/Python.xcframework"
    )
}

let cPythonTarget = Target.target(
    name: "CPython",
    dependencies: [
        "Python"
    ],
    path: "Sources/CPython",
    publicHeadersPath: "."

)


let package = Package(
    name: "CPython",
    products: [
        .library(
            name: "CPython",
            targets: [
                "CPython"
            ]
        )
    ],
    targets: [
        cPythonTarget,
        pythonBinaryTarget,
    ]
)