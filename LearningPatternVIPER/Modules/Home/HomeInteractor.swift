//
//  HomeInteractor.swift
//  LearningPatternVIPER
//
//  Created by Danil Ryumin on 26.12.2021.
//

import Foundation
import UIKit

protocol HomeInteractorProtocol: AnyObject {
    init(_ presenter: HomePresenter)
    
    var loginImage: UIImage { get }
    var showPhotoImage: UIImage { get }
}

class HomeInteractor: HomeInteractorProtocol {
    let homeEntity: HomeEntityProtocol = HomeEntity()
    weak var presenter: HomePresenterProtocol?
    var loginImage: UIImage {
        get { return homeEntity.logoutImage }
    }
    var showPhotoImage: UIImage {
        get { return homeEntity.showPhotoImage }
    }
    
    required init(_ presenter: HomePresenter) {
        self.presenter = presenter
      }
}
