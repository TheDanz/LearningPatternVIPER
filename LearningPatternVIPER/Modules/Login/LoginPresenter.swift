//
//  LoginPresenter.swift
//  LearningPatternVIPER
//
//  Created by Danil Ryumin on 26.12.2021.
//

import Foundation

protocol LoginPresenterProtocol: AnyObject {
    func configureView()
    func loginClicked()
    init(_ view: LoginViewProtocol) 
}

class LoginPresenter: LoginPresenterProtocol {
    weak var view: LoginViewProtocol?
    var interactor: LoginInteractorProtocol!
    var router: LoginRouterProtocol!
    
    required init(_ view: LoginViewProtocol) {
        self.view = view
    }
    
    func configureView() {
        view?.setLoginButtonImage(image: interactor.login)
    }
    
    func loginClicked() {
        router.openHomePage()
    }
}
