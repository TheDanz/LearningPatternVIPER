//
//  HomeRouter.swift
//  LearningPatternVIPER
//
//  Created by Danil Ryumin on 26.12.2021.
//

import Foundation

protocol HomeRouterProtocol: AnyObject {
    init(_ viewController: HomeView)
    func closeCurrentController()
    func showSecondController()
}

class HomeRouter: HomeRouterProtocol {
    weak var viewController: HomeView?
    
    required init(_ viewController: HomeView) {
        self.viewController = viewController
    }
    
    func closeCurrentController() {
        viewController?.dismiss(animated: true, completion: nil)
    }
    
    func showSecondController() {
        viewController?.performSegue(withIdentifier: viewController!.segueIdentifire, sender: nil)
    }
}
