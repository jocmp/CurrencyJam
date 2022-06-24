//
//  LocaleOptions.swift
//  CurrencyJam
//
//  Created by jocmp on 6/24/22.
//

import Foundation

struct LocaleOptions: Hashable, Identifiable {
    let code: String
    let display: String
    
    var id: String {
        return code
    }
    
    static let usEnglish = LocaleOptions(code: "en_US", display: "US English")

    static let all: [LocaleOptions] = [
        usEnglish,
        .init(code: "en_UK", display: "UK English"),
        .init(code: "en_CA", display: "Canadian English"),
        .init(code: "fr_CA", display: "Canadian French"),
        .init(code: "fr_FR", display: "French"),
        .init(code: "de_DE", display: "German"),
   ]
}
