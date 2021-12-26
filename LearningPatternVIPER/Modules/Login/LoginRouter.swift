//
//  LoginRouter.swift
//  LearningPatternVIPER
//
//  Created by Danil Ryumin on 26.12.2021.
//

import Foundation

protocol LoginRouterProtocol: AnyObject {
    func openHomePage()
    init (_ viewController: LoginView)
}

class LoginRouter: LoginRouterProtocol {
    weak var viewController: LoginView?
    
    func openHomePage() {
        viewController?.performSegue(withIdentifier: viewController!.segueIdentifier, sender: nil)
    }
    
    required init(_ viewController: LoginView) {
        self.viewController = viewController
      }
}
