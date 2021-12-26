//
//  PhotoPresenter.swift
//  LearningPatternVIPER
//
//  Created by Danil Ryumin on 26.12.2021.
//

import Foundation

protocol PhotoPresenterProtocol: AnyObject {
    init (_ view: PhotoViewProtocol)
   
    func configureView()
    func backToHomePressed()
}

class PhotoPresenter: PhotoPresenterProtocol {
    weak var view:PhotoViewProtocol?
   
    var interactor: PhotoInteractorProtocol!
    var router: PhotoRouterProtocol!
   
    required init(_ view: PhotoViewProtocol) {
      self.view = view
    }
   
    func configureView() {
      view?.setPhoto(image: interactor.photoImage)
    }
   
    func backToHomePressed() {
      router.backToHome()
    }
}
