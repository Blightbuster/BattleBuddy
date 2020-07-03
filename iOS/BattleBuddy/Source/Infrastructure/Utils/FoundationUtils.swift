//
//  FoundationUtils.swift
//  BattleBuddy
//
//  Created by Mike on 8/27/19.
//  Copyright © 2019 Veritas. All rights reserved.
//

import UIKit

extension String {
    func containsIgnoringCase(_ find: String) -> Bool{
        return self.range(of: find, options: .caseInsensitive) != nil
    }

    func createAttributedString(boldedSubstring: String, font: UIFont) -> NSAttributedString {
        let attributedString = NSMutableAttributedString(string: self, attributes: [NSAttributedString.Key.font: font])
        let boldFontAttribute: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: font.pointSize)]
        let range = (self as NSString).range(of: boldedSubstring)
        attributedString.addAttributes(boldFontAttribute, range: range)
        return attributedString
    }
}

// Command to validate Strings files...
// plutil -lint Localizable.strings

extension CGFloat {
    func valueInRadians() -> CGFloat {
        return self * .pi / 180.0
    }

    func valueInDegrees() -> CGFloat {
        return self * 180.0 / .pi
    }
}

extension Float {
    func valueInRadians() -> Float {
        return self * .pi / 180.0
    }

    func valueInDegrees() -> Float {
        return self * 180.0 / .pi
    }

    func roundedToDecimalPlaces(_ decimalPlaces: Int) -> Float {
        let multiplier = Int(pow(CGFloat(10), CGFloat(decimalPlaces)))
        let multipliedAndRoundedOff = Int(self * Float(multiplier))
        let convertedBack = Float(multipliedAndRoundedOff)
        return convertedBack / Float(multiplier)
    }
}

extension Double {
    func percentString() -> String? {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .percent
        return numberFormatter.string(from: NSNumber(value: self))
    }
}
