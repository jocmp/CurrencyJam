//
//  ContentView.swift
//  Shared
//
//  Created by jocmp on 6/23/22.
//

import SwiftUI

struct LocalePicker: View {
    @State var locale: LocaleOptions = .usEnglish
    @State var amountCurrency: Currency = .usd

    var body: some View {
        VStack(alignment: .leading) {
            Picker("Currency", selection: $amountCurrency) {
                ForEach(Currency.all) { presented in
                    Text(presented.code).tag(presented)
                }
            }
            Picker("Locale", selection: $locale) {
                ForEach(LocaleOptions.all) { presented in
                    Text(presented.display).tag(presented)
                }
            }
            Amount(
                localeCode: locale.code,
                currencyCode: amountCurrency.code
            )
        }.padding()
    }
}

struct Amount: View {
    let localeCode: String
    let currencyCode: String
    @State var value = ""

    var body: some View {
        Group {
            TextField("Amount", text: $value)
            Divider()
            Text("Output")
                .font(.headline)
            Text(formatted)            
        }
    }
    
    var formatted: String {
        return MoneyParser.format(
            stringLiteral: value,
            localeCode: localeCode,
            currencyCode: currencyCode
        )
    }
}

struct LocalePicker_Previews: PreviewProvider {
    static var previews: some View {
        LocalePicker()
    }
}
