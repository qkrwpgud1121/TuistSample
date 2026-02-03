# Tuist-CleanArchitecture-MVVM

## Tech Stack

| 구분 | 기술 스택 | 적용 목적 |
| :-- | :-- | :-- |
| **UI** | SwiftUI | Modern UI Framework |
| **Architecture** | Modular + MVVM + Clean Arch | Scalable Architecture |
| **Concurrency** | Swift Concurrency (async/await) | High Performance Async |
| **Reactive** | Combine | UI State Binding |
| **Network** | URLSession | Native Networking Layer |
| **Build Tool** | Tuist | Dependency Management & Module Generation |
| **Code Quality** | SwiftLint | Static Code Analysis & Style Guide |
| **CI/CD** | GitHub Actions | Automated Build & Test Pipeline |
| **Unit Test** | XCTest | Validates business logic in the Core module |

## Troubleshooting

### 1.CI Build Error: Simulator Not Found (Error Code 70)

**문제**

GitHub Actions의 `macos-latest` 러너 환경이 업데이트되거나 변경될 때, `build` 워크플로우에서 하드코딩된 시뮬레이터(ex: iPhone 16 Pro)를 찾지 못해 빌드가 실패하는 현상 발생.

- **에러 로그:** `xcodebuild: error: Unable to find a destination matching the provided destination specifier`

- **원인:** CI 러너에 설치된 Xcode 버전과 시뮬레이터 목록이 유동적이라 특정 기기를 고정하면 호환성 문제가 생김.

**해결 방법**

`CI.yml` 파일에서 `xcrun simctl` 명령어를 사용하여 현재 런타임에서 사용 가능한 최신 iPhone 시뮬레이터를 동적으로 찾아서 할당하도록 스크립트를 개선함.

1. `xcrun simctl list devices available` 명령어로 사용 가능한 기기 목록 조회.

2. `jq`를 사용하여 이름에 "iPhone"이 포함된 기기 중 가장 최신 모델을 필터링.

3. 해당 기기 이름을 환경변수 `$DEVICE_NAME`으로 저장하여 `xcodebuild`의 destination으로 전달.

**향후 계획**

- 이후 동일한 문제가 재발하거나 여러 기기 버전을 동시에 테스트해야 할 경우, 대안으로 검토했던 GitHub Actions의 `Matrix` 도입 예정.
