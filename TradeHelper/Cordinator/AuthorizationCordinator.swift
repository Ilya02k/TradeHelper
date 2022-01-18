//
//  AuthorizationCordinator.swift
//  TradeHelper
//
//  Created by Ilya Kozlov on 17.01.22.
//

import Foundation
import UIKit


class AuthorizationCordinator: RootCoordinator {
  private let navigationController: UINavigationController
  
  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  func start() {
    startWithSignInScreen()
    //startWithSignUpScreen
  }
  private func startWithSignInScreen() {
    let authViewModel = AuthViewModel(cordinator: self, type: .signIn)
    let authViewController = AuthViewController(viewModel: authViewModel)
    navigationController.pushViewController(authViewController, animated: true)
  }
  private func startWithSignUpScreen() {
    let authViewModel = AuthViewModel(cordinator: self, type: .signUp)
    let authViewController = AuthViewController(viewModel: authViewModel)
    navigationController.pushViewController(authViewController, animated: true)
  }
}
