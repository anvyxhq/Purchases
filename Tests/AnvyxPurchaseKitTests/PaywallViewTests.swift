//
//  PaywallViewTests.swift
//  Purchases
//
//  Created by AnhPT on 10/07/2026.
//

import XCTest
import SwiftUI
@testable import AnvyxPurchaseKit

final class PaywallViewTests: XCTestCase {
    @MainActor
    func testPaywallViewsConstruct() {
        _ = AnvyxSubscriptionStore(groupID: "premium")
        _ = AnvyxSubscriptionStore(groupID: "premium") { Text("Header") }
        _ = AnvyxProductStore(ids: ["a", "b"])
        _ = AnvyxProductCard(id: "a")
    }
}
