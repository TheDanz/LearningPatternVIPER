//
//  PhotoRouter.swift
//  LearningPatternVIPER
//
//  Created by Danil Ryumin on 26.12.2021.
//

import Foundation

protocol PhotoRouterProtocol: AnyObject {
    init (_ viewController: PhotoView)
    func backToHome()
}

class PhotoRouter: PhotoRouterProtocol {
    weak var viewController: PhotoView?
     
      required init(_ viewController: PhotoView) {
        self.viewController = viewController
      }
     
      func backToHome() {
        viewController?.dismiss(animated: true, completion: nil)
      }
}
