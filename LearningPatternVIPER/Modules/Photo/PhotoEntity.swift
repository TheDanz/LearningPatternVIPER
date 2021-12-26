//
//  PhotoEntity.swift
//  LearningPatternVIPER
//
//  Created by Danil Ryumin on 26.12.2021.
//

import Foundation
import UIKit

protocol PhotoEntityProtocol {
    var photo: UIImage { get }
}

struct PhotoEntity: PhotoEntityProtocol {
    var photo: UIImage {
        get { return #imageLiteral(resourceName: "female")}
    }
}
