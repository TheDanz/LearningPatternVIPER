//
//  HomeAssambly.swift
//  LearningPatternVIPER
//
//  Created by Danil Ryumin on 26.12.2021.
//

import Foundation

protocol HomeAssamblyProtocol: AnyObject {
    func configure(viewController: HomeView)
}

class HomeAssambly: HomeAssamblyProtocol {
    func configure(viewController: HomeView) {
        let presenter = HomePresenter(viewController)
        let interactor = HomeInteractor(presenter)
        let router = HomeRouter(viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}
