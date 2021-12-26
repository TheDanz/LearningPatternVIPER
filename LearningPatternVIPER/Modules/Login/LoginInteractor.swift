//
//  LoginInteractor.swift
//  LearningPatternVIPER
//
//  Created by Danil Ryumin on 26.12.2021.
//

import Foundation
import UIKit

protocol LoginInteractorProtocol: AnyObject {
    var login: UIImage { get }
    init(_ presenter: LoginPresenterProtocol)
}

class LoginInteractor: LoginInteractorProtocol {
    let loginEntity: LoginEntityProtocol = LoginEntity()
    weak var presenter: LoginPresenterProtocol?
    var login: UIImage {
        get { return loginEntity.loginImageForButton }
    }
    
    required init(_ presenter: LoginPresenterProtocol) {
        self.presenter = presenter
    }
}
