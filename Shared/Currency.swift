//
//  PresentedCurrency.swift
//  CurrencyJam
//
//  Created by jocmp on 6/24/22.
//

import Foundation

struct Currency: Hashable, Identifiable {
    let code: String

    var id: String {
        return code
    }
    
    static let usd = Currency(code: "USD")
    
    static let all: [Currency] = [
        usd,
        .init(code: "GBP"),
        .init(code: "CAD"),
        .init(code: "EUR")
    ]
}
