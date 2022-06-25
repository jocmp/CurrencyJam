# Currency Jam

A demo app for testing out SwiftUI money inputs and formatting.

## Examples

The "amount" input is backed by a struct called [MoneyParser](./Shared/MoneyParser.swift) which handles whitespace, thousands delimiters, and decimal separators.

Check out more scenarios in the [Tests/MoneyParserTests.swift](./Tests/MoneyParserTests.swift) file.

|                     |                                                      |
| ------------------- | ---------------------------------------------------- |
| EUR, France         | <img src="./Screenshots/eur-fr.png" width="400px" /> |
| USD, United States  | <img src="./Screenshots/usd-us.png" width="400px" /> |
| GBP, United Kingdom | <img src="./Screenshots/gbp-gb.png" width="400px" /> |
