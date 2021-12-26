//
//  HomePresenter.swift
//  LearningPatternVIPER
//
//  Created by Danil Ryumin on 26.12.2021.
//

import Foundation

protocol HomePresenterProtocol: AnyObject {
    init(_ view: HomeViewProtocol)
    func configureView()
    func logoutClicked()
    func showPhotoClicked()
}

class HomePresenter: HomePresenterProtocol {
     weak var view: HomeViewProtocol?
    
     var router: HomeRouterProtocol!
     var interactor: HomeInteractorProtocol!
    
     required init(_ view: HomeViewProtocol) {
       self.view = view
     }
    
     func configureView() {
       view?.setLogoutImage(image: interactor.loginImage)
       view?.setShowPhoto(image: interactor.showPhotoImage)
     }
    
     func logoutClicked() {
       router.closeCurrentController()
     }
    
     func showPhotoClicked() {
       router.showSecondController()
     }
}
