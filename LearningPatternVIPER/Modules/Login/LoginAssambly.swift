//
//  LoginAssambly.swift
//  LearningPatternVIPER
//
//  Created by Danil Ryumin on 26.12.2021.
//

import Foundation

protocol LoginAssamblyProtocol: AnyObject {
    func configure(view: LoginView)
}

class LoginAssambly: LoginAssamblyProtocol {
    func configure(view: LoginView) {
        let presenter = LoginPresenter(view)
        let interactor = LoginInteractor(presenter)
        let router = LoginRouter(view)
        
        view.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}
