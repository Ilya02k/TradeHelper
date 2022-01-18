//
//  ViewController.swift
//  TradeHelper
//
//  Created by Ilya Kozlov on 17.01.22.
//

import UIKit

class AuthViewController: UIViewController {

  private let viewModel: AuthViewModel
  private let socialNetworksStackView = SocialNetworksStackView()
  init(viewModel: AuthViewModel) {
    self.viewModel = viewModel
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .red
    // Do any additional setup after loading the view.
  }


}

