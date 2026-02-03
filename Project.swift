import ProjectDescription

let project = Project(
    name: "TuistSample",
    targets: [
        .target(
            name: "TuistSample",
            destinations: .iOS,
            product: .app,
            bundleId: "dev.tuist.TuistSample",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            buildableFolders: [
                "TuistSample/Sources",
                "TuistSample/Resources",
            ],
            dependencies: []
        ),
        .target(
            name: "TuistSampleTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "dev.tuist.TuistSampleTests",
            infoPlist: .default,
            buildableFolders: [
                "TuistSample/Tests"
            ],
            dependencies: [.target(name: "TuistSample")]
        ),
    ]
)
