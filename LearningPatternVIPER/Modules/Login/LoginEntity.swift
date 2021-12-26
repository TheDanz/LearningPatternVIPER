//
//  LoginEntity.swift
//  LearningPatternVIPER
//
//  Created by Danil Ryumin on 26.12.2021.
//

import Foundation
import UIKit

protocol LoginEntityProtocol {
    var loginImageForButton: UIImage { get }
}

struct LoginEntity: LoginEntityProtocol {
    var loginImageForButton: UIImage { get { return #imageLiteral(resourceName: "Login")}}
}
