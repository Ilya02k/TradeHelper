//
//  CustomButtonWithType.swift
//  TradeHelper
//
//  Created by Ilya Kozlov on 17.01.22.
//

import UIKit

class AuthMethodButton: UIButton {
  let type: TypeOfButton
  init(type: TypeOfButton) {
      self.type = type
      super.init(frame: .zero)
  }
  
  @available(iOS 15.0, *)
  convenience init(type: TypeOfButton, configuration: UIButton.Configuration) {
    self.init(type: type)
    self.configuration = configuration
  }
  
  required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
}
