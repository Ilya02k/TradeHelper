//
//  SocialNetworksStackView.swift
//  TradeHelper
//
//  Created by Ilya Kozlov on 17.01.22.
//

import UIKit

class SocialNetworksStackView: UIStackView {

  var data: ((TypeOfButton) -> Void)?
  
  init() {
    super.init(frame: .zero)
    createSocialNetworksStackView()
  }
  
  required init(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  private func createSocialNetworksStackView() -> Void {
      self.distribution = .equalSpacing
      self.alignment = .fill
      self.axis = .vertical
      self.spacing = 8
      
      for buttonCase in TypeOfButton.allCases {
          if buttonCase == .facebook ||
             buttonCase == .google ||
              buttonCase == .apple
          {
              let button = createLongButton(image: buttonCase.imageOfButton, backGroundNameColor: buttonCase.hexColor, title: buttonCase.titleOfButtonForSignUp, titleColor: buttonCase.titleColor, rawValue: buttonCase.rawValue, type: buttonCase)
              button.addTarget(self, action: #selector(buttonWasClicked), for: .touchUpInside)
              self.addArrangedSubview(button)
          }
      }
  }
  private func createLongButton(image: UIImage, backGroundNameColor: String, title: String, titleColor: UIColor, rawValue: Int, type: TypeOfButton) -> AuthMethodButton {
    
    if #available(iOS 15.0, *) {
      var configuration = UIButton.Configuration.filled()
      configuration.title = title
      configuration.image = image
      configuration.titleAlignment = .center
      let button = AuthMethodButton(type: type, configuration: configuration)
      makeButtonContraint(button: button)
      return button
    } else {
      let button = AuthMethodButton(type: type)
      button.setImage(image, for: UIControl.State.normal)
      button.setTitle(title, for: UIControl.State.normal)
      button.titleLabel?.font = UIFont.appFont(with: 14, type: .medium)
      button.setTitleColor(titleColor, for: UIControl.State.normal)
      
      button.backgroundColor = UIColor(named: backGroundNameColor)
      button.layer.cornerRadius = 6
      switch type {
      case .facebook: button.imageEdgeInsets = UIEdgeInsets(top: 5, left: 20, bottom: 5, right: 157)
      case .google: button.imageEdgeInsets = UIEdgeInsets(top: 5, left: 25, bottom: 5, right: 157)
      case .apple: button.imageEdgeInsets = UIEdgeInsets(top: 5, left: 25, bottom: 5, right: 157)
      }
      makeButtonContraint(button: button)
      return button
    }
  }
  private func makeButtonContraint(button: AuthMethodButton) {
    button.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      button.heightAnchor.constraint(equalToConstant: 40)
    ])
  }
  //MARK: Target action functions
  @objc func buttonWasClicked(sender: AuthMethodButton) {
    data?(sender.type)
  }
}
