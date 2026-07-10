//
//  PaywallView.swift
//  Purchases
//
//  Created by AnhPT on 10/07/2026.
//

import SwiftUI
import StoreKit

/// A ready-made subscription paywall built on StoreKit's `SubscriptionStoreView`
/// (auto-adopts Liquid Glass on iOS 26). Products are loaded from a subscription
/// group configured in App Store Connect / your `.storekit` file.
///
/// ```swift
/// AnvyxSubscriptionStore(groupID: "premium") {
///     BrandHeader()
/// }
/// ```
public struct AnvyxSubscriptionStore<MarketingContent: View>: View {
    private let groupID: String
    private let marketingContent: MarketingContent

    public init(
        groupID: String,
        @ViewBuilder marketingContent: () -> MarketingContent = { EmptyView() }
    ) {
        self.groupID = groupID
        self.marketingContent = marketingContent()
    }

    public var body: some View {
        SubscriptionStoreView(groupID: groupID) {
            marketingContent
        }
        .storeButton(.visible, for: .restorePurchases)
        .subscriptionStoreControlStyle(.automatic)
    }
}

/// A ready-made store showing a set of products by id (subscriptions or one-time),
/// with a restore button.
public struct AnvyxProductStore: View {
    private let ids: [String]

    public init(ids: [String]) {
        self.ids = ids
    }

    public var body: some View {
        StoreView(ids: ids)
            .storeButton(.visible, for: .restorePurchases)
    }
}

/// A single product card (icon, name, price, buy button) for one product id.
public struct AnvyxProductCard: View {
    private let id: String

    public init(id: String) {
        self.id = id
    }

    public var body: some View {
        ProductView(id: id)
    }
}
