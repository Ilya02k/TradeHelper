//
//  UIFont+Extension.swift
//  TradeHelper
//
//  Created by Ilya Kozlov on 17.01.22.
//

import Foundation
import UIKit

extension UIFont {

    enum Font: String {
        case regular = "Poppins-Regular"
        case bold = "Poppins-Bold"
        case light = "Poppins-Light"
        case medium = "Poppins-Medium"
        case semiBold = "poppins-semibold"
    }

    class func appFont(with size:CGFloat, type: Font) -> UIFont {
        return  UIFont(name: type.rawValue, size: size) ?? UIFont()
    }
}
