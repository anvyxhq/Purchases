//
//  OfferCode.swift
//  Purchases
//
//  Created by AnhPT on 14/07/2026.
//

#if canImport(UIKit)
import UIKit
import StoreKit

public extension PurchaseManager {
    /// Present the App Store's offer-code redemption sheet, then refresh
    /// entitlements once the user redeems.
    @MainActor
    func presentOfferCodeRedemption(in scene: UIWindowScene) async throws {
        try await AppStore.presentOfferCodeRedeemSheet(in: scene)
        await refreshEntitlements()
    }
}
#endif
