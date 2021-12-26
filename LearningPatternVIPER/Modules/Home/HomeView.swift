//
//  HomeView.swift
//  LearningPatternVIPER
//
//  Created by Danil Ryumin on 26.12.2021.
//

import UIKit

protocol HomeViewProtocol: AnyObject {
    func setLogoutImage(image: UIImage)
    func setShowPhoto(image: UIImage)
}

class HomeView: UIViewController {
    @IBOutlet weak var showPhotoButton: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
    var presenter: HomePresenterProtocol?
    var assambly: HomeAssamblyProtocol = HomeAssambly()
    let segueIdentifire = "HomeToPhoto" 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assambly.configure(viewController: self)
        presenter?.configureView()
    }
    
    @IBAction func showPhotoButtonClick(_ sender: Any) {
        presenter?.showPhotoClicked()
    }
    
    @IBAction func logoutButtonClick(_ sender: Any) {
        presenter?.logoutClicked()
    }
}

extension HomeView: HomeViewProtocol {
  func setLogoutImage(image: UIImage) {
    logoutButton.setBackgroundImage(image, for: .normal)
  }
 
  func setShowPhoto(image: UIImage) {
    showPhotoButton.setBackgroundImage(image, for: .normal)
  }
}
