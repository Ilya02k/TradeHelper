//
//  AppCordinator.swift
//  TradeHelper
//
//  Created by Ilya Kozlov on 17.01.22.
//

import Foundation
import UIKit
class AppCoordinator: RootCoordinator {
  private let window: UIWindow
  private let navigationController = UINavigationController()
  
  init(window: UIWindow) {
    self.window = window
    self.window.rootViewController = navigationController
    self.window.makeKeyAndVisible()
  }
  
  func start() {
    let authorizationCordinator = AuthorizationCordinator(navigationController: navigationController)
    cordinate(to: authorizationCordinator)
  }
}
