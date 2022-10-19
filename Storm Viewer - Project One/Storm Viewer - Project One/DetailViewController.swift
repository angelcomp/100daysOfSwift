//
//  DetailViewController.swift
//  Storm Viewer - Project One
//
//  Created by Angelica dos Santos on 19/10/22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let safeImage = selectedImage {
            imageView.image = UIImage(named: safeImage)
        }
    }
}
