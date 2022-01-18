//
//  AuthViewModel.swift
//  TradeHelper
//
//  Created by Ilya Kozlov on 17.01.22.
//

import Foundation

struct AuthViewModel {
  private let cordinator: AuthorizationCordinator
  private let type: AuthType
  
  init(cordinator: AuthorizationCordinator, type: AuthType) {
    self.cordinator = cordinator
    self.type = type
  }
}
