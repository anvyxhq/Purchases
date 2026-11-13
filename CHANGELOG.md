# Changelog

All notable changes to this package are documented in this file.

The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and the package follows [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Breaking

- **Breaking:** Products and modules were renamed to `Anvyx*` (`AnvyxPurchaseKit`) and the package now requires Swift 6.2 (Xcode 26). Update `.product(name:)` entries and `import` statements.

### Added

- Ready-made StoreKit paywall views (Wave 2)

### Changed

- Win-back offers + offer-code redemption + currentEntitlements (P1)
- Rename module(s) -> Anvyx* (naming convention)

## [2.2.0] - 2026-07-04

### Added

- PurchaseError (typed verification failure) + product(for:)/hasLoadedProducts on port (merge AVNStoreKit strengths)

## [2.1.0] - 2026-07-02

### Added

- PurchaseServicing port + PaywallModel view model (testable paywall)

## [2.0.2] - 2026-07-02

_No notable changes._

## [2.0.1] - 2026-07-02

_No notable changes._

## [2.0.0] - 2026-07-02

_No notable changes._

## [1.2.0] - 2026-07-01

### Added

- Adopt iOS 17 + Observation (@Observable); DesignSystem adds Typography/fonts

## [1.1.0] - 2026-07-01

### Added

- Add subscription status, intro-offer eligibility, expiration date, period text

## [1.0.0] - 2026-07-01

### Changed

- Initial release (SwiftUI/async-await iOS base)
