//
//  RootCordinator.swift
//  TradeHelper
//
//  Created by Ilya Kozlov on 17.01.22.
//

import Foundation
import UIKit

protocol RootCoordinator {
  func start()
  func cordinate(to coordinator: RootCoordinator)
}

extension RootCoordinator {
  func cordinate(to coordinator: RootCoordinator) {
    coordinator.start()
  }
}
