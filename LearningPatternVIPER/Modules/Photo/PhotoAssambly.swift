//
//  PhotoAssambly.swift
//  LearningPatternVIPER
//
//  Created by Danil Ryumin on 26.12.2021.
//

import Foundation

protocol PhotoAssamblyProtocol: AnyObject {
    func configure(viewController: PhotoView)
}

class PhotoAssambly: PhotoAssamblyProtocol {
    func configure(viewController: PhotoView) {
        let presenter = PhotoPresenter(viewController)
        let interactor = PhotoInteractor(presenter)
        let router = PhotoRouter(viewController)
     
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
      }
}
