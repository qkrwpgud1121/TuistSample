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
            dependencies: [.target(name: "Feature")]
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
        .target(
            name: "Feature",
            destinations: .iOS,
            product: .framework,
            bundleId: "dev.tuist.feature",
            infoPlist: .default,
            buildableFolders: [
                "Feature/Resources",
                "Feature/Sources",
                "Feature/Tests"
            ],
            dependencies: [.target(name: "Core")]
        ),
        .target(
            name: "Core",
            destinations: .iOS,
            product: .framework,
            bundleId: "dev.tuist.core",
            infoPlist: .default,
            buildableFolders: [
                "Core/Sources",
                "Core/Tests"
            ],
            dependencies: [.target(name: "Shared")]
        ),
        .target(
            name: "Shared",
            destinations: .iOS,
            product: .framework,
            bundleId: "dev.tuist.shared",
            infoPlist: .default,
            buildableFolders: [
                "Shared/Sources",
                "Shared/Tests"
            ],
            dependencies: []
        )
    ]
)
