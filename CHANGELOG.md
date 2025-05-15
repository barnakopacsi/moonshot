# Changelog

All notable changes to this project will be documented in this file.

## [1.1.0] - 2025-05-15
### Changed
- Refactored navigation to use `NavigationLink(value:)` and `.navigationDestination(for:)` for type-safe, declarative navigation.
- Updated `Mission` and `Astronaut` structs to conform to `Hashable` to support new navigation approach.
- Replaced direct destination closures in Grid and List layouts with `NavigationLink(value:)`.
- Moved navigation destinations to the root `NavigationStack` in `ContentView`.

