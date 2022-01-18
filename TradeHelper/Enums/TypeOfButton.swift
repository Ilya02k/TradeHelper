//
//  TypeOfButton.swift
//  TradeHelper
//
//  Created by Ilya Kozlov on 17.01.22.
//

import Foundation
import UIKit

enum TypeOfButton: Int, CaseIterable {
    case facebook
    case google
    case apple
    var imageOfButton: UIImage {
        switch self {
        case .facebook: return UIImage(named: "facebook-XS-dark") ?? UIImage()
        case .google:  return UIImage(named: "Google") ?? UIImage()
        case .apple: return UIImage(named: "Apple") ?? UIImage()
        }
    }
    var titleOfButtonForSignUp: String {
        switch self {
        case .facebook: return "Sign up with Facebook"
        case .google:  return "Sign up with Google"
        case .apple: return "Sign up with Apple"
        }
    }
    var titleOfButtonForLogIn: String {
        switch self {
        case .facebook: return "Log in with Facebook"
        case .google:  return "Log in with Google"
        case .apple: return "Log in with Apple"
        }
    }

    var hexColor: String {
        switch self {
        case .facebook: return "#3E5994"
        case .google:  return "#FFFFFF"
        case .apple: return "#000000"
        }
    }
    var titleColor: UIColor {
        switch self {
        case .facebook, .apple: return .white
        case .google:  return .white
        }
    }
}
