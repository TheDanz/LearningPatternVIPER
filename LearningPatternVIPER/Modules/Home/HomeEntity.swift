//
//  HomeEntity.swift
//  LearningPatternVIPER
//
//  Created by Danil Ryumin on 26.12.2021.
//

import Foundation
import UIKit

protocol HomeEntityProtocol {
    var logoutImage: UIImage { get }
    var showPhotoImage: UIImage { get }
}

struct HomeEntity: HomeEntityProtocol {
    var logoutImage: UIImage { get { return #imageLiteral(resourceName: "logout")}}
    var showPhotoImage: UIImage { get { return #imageLiteral(resourceName: "showImage")}}
}
