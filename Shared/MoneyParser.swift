//
//  MoneyParser.swift
//  CurrencyJam
//
//  Created by jocmp on 6/24/22.
//

import Foundation

struct MoneyParser {
    static func parse(_ value: String, localeCode: String) -> NSNumber {
        let cleanedValue = value.replacingOccurrences(of: " ", with: "")
        let formatter = buildInputFormatter(localeCode: localeCode)
        return formatter.number(from: cleanedValue) ?? 0
    }
    
    static func format(stringLiteral: String, localeCode: String, currencyCode: String) -> String {
        return format(
            parse(stringLiteral, localeCode: localeCode),
            localeCode: localeCode,
            currencyCode: currencyCode
        )
    }

    static func format(_ value: NSNumber, localeCode: String, currencyCode: String) -> String {
        let formatter = buildCurrencyFormatter(localeCode: localeCode, currencyCode: currencyCode)
        return formatter.string(from: value) ?? ""
    }
}

func buildInputFormatter(localeCode: String) -> NumberFormatter {
    let formatter = NumberFormatter()
    let locale = Locale.init(identifier: localeCode)
    formatter.locale = locale
    formatter.numberStyle = .decimal
    return formatter
}

func buildCurrencyFormatter(localeCode: String, currencyCode: String) -> NumberFormatter {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.currencyCode = currencyCode
    formatter.locale = Locale.init(identifier: localeCode)
    formatter.alwaysShowsDecimalSeparator = true
    formatter.usesGroupingSeparator = true
    return formatter
}
