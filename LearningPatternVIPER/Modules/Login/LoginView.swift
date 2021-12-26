//
//  LoginView.swift
//  LearningPatternVIPER
//
//  Created by Danil Ryumin on 26.12.2021.
//

import UIKit

protocol LoginViewProtocol: AnyObject {
    func setLoginButtonImage(image: UIImage)
}

class LoginView: UIViewController {
    @IBOutlet weak var loginButton: UIButton!
    
    var presenter: LoginPresenterProtocol!
    var assambly: LoginAssamblyProtocol = LoginAssambly()
    let segueIdentifier = "LoginToHome"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assambly.configure(view: self)
        presenter.configureView()
    }
    
    @IBAction func loginButtonClick(_ sender: Any) {
        presenter.loginClicked()
    }
}

extension LoginView: LoginViewProtocol {
  func setLoginButtonImage(image: UIImage) {
    loginButton.setBackgroundImage(image, for: .normal)
  }
}
