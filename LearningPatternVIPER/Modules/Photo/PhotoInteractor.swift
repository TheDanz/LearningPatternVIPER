//
//  PhotoInteractor.swift
//  LearningPatternVIPER
//
//  Created by Danil Ryumin on 26.12.2021.
//

import Foundation
import UIKit

protocol PhotoInteractorProtocol: AnyObject {
    init(_ presenter: PhotoPresenterProtocol)
   
    var photoImage: UIImage { get }
}

class PhotoInteractor: PhotoInteractorProtocol {
     weak var presenter: PhotoPresenterProtocol?
    
     let entityProtocol: PhotoEntityProtocol = PhotoEntity()
    
     required init (_ presenter: PhotoPresenterProtocol) {
       self.presenter = presenter
     }
    
     var photoImage: UIImage {
       get {
         return entityProtocol.photo
       }
     }
}
