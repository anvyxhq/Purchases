# ``AnvyxPurchaseKit``

StoreKit 2 purchases and subscriptions: an `@Observable` purchase manager,
entitlement tracking, and ready-made SwiftUI paywall views.

## Overview

``PurchaseManager`` (StoreKit 2, `@Observable`) loads products, buys, restores, and
tracks entitlements. Drop in ``AnvyxSubscriptionStore`` / ``AnvyxProductStore`` for
a paywall that inherits system styling (and Liquid Glass on iOS 26).

```swift
@State private var purchases = PurchaseManager(productIDs: ids)
AnvyxSubscriptionStore(groupID: "premium")
if purchases.isSubscribed { unlock() }
```

## Topics

### Purchasing
- ``PurchaseManager``
- ``PurchaseServicing``
- ``PurchaseOutcome``
- ``PurchaseError``

### Paywall UI
- ``PaywallModel``
- ``AnvyxSubscriptionStore``
- ``AnvyxProductStore``
- ``AnvyxProductCard``
