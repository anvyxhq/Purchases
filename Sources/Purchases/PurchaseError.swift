//
//  PurchaseError.swift
//  Purchases
//
//  Created by AnhPT on 04/07/2026.
//

import Foundation

/// Typed purchase failures, so call sites can react precisely instead of
/// inspecting opaque StoreKit errors.
public enum PurchaseError: Error, Sendable {
    /// StoreKit could not cryptographically verify the transaction.
    case verificationFailed
    /// No product matched the requested identifier.
    case productNotFound
}
