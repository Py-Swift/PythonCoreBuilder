
// swift-tools-version: 5.9

import PackageDescription

let package = Package(
	name: "PythonCore", 
	platforms: [.iOS(.v13), .macOS(.v11)], 
	products: [
		.library(
			name: "PythonCore", 
			targets: [
				"PythonCore",
				//"Python",
                //"CPython"
			]
		), 
	], 
	dependencies: [
	], 
	targets: [
		.target(
			name: "Python",
			dependencies: [
				"libPython",
			],
			resources: [
			],
			linkerSettings: [
				.linkedLibrary("bz2"), 
					.linkedLibrary("z"), 
					.linkedLibrary("ncurses"), 
					.linkedLibrary("sqlite3"), 
			]
		), 
//////			.target(
//////				name: "PythonExtra", 
//////				dependencies: [
//////					"Python"
//////				]
//////				
//////			),
        
        .target(
            name: "PythonCore",
            dependencies: [
                "Python"
            ],
            resources: [
            ],
            linkerSettings: [
//                .linkedLibrary("z"),
//                .linkedLibrary("bz2"),
//                .linkedLibrary("sqlite3"),
//                .linkedLibrary("ncurses")
            ],
            plugins: []
        ),
//			.target(
//				name: "TestPython", 
//				dependencies: ["PythonCore"]
//			),
        //.binaryTarget(name: "libPython", path: "libPython.xcframework")
		.binaryTarget(name: "libPython", url: "https://github.com/PythonSwiftLink/PythonCore/releases/download/311.0.2/libPython.zip", checksum: "410d57419f0ccbc563ab821e3aa241a4ed8684888775f4bdea0dfc70820b9de6"),
	]
)
