//
//  PurchasesTests.swift
//  Purchases
//
//  Created by AnhPT on 02/07/2026.
//

import XCTest
@testable import Purchases

@MainActor
final class PurchasesTests: XCTestCase {
    func testInitialStateIsEmpty() {
        let manager = PurchaseManager(productIDs: ["com.app.pro"])
        XCTAssertFalse(manager.hasActiveEntitlement)
        XCTAssertFalse(manager.isPurchased("com.app.pro"))
        XCTAssertTrue(manager.products.isEmpty)
    }
}
