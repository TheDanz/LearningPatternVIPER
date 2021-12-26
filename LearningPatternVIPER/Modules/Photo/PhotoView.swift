//
//  PhotoView.swift
//  LearningPatternVIPER
//
//  Created by Danil Ryumin on 26.12.2021.
//

import UIKit

protocol PhotoViewProtocol: AnyObject {
    func setPhoto(image: UIImage)
}

class PhotoView: UIViewController {
    @IBOutlet weak var photoImage: UIImageView!
    
    var presenter: PhotoPresenterProtocol?
    var assambly: PhotoAssamblyProtocol = PhotoAssambly()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assambly.configure(viewController: self)
        presenter?.configureView()
    }
    
    @IBAction func doneClick(_ sender: Any) {
        presenter?.backToHomePressed()
    }
}

extension PhotoView: PhotoViewProtocol {
  func setPhoto(image: UIImage) {
    photoImage.image = image
  }
}
