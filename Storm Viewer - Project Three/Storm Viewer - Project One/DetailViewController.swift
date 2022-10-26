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
        
        navigationItem.largeTitleDisplayMode = .never
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTaped))

        if let safeImage = selectedImage {
            imageView.image = UIImage(named: safeImage)
        }
    }
    
    @objc private func shareTaped() {
        guard let image = imageView.image?.jpegData(compressionQuality: 0.8) else {
            let ac = UIAlertController(title: "error", message: "No image found", preferredStyle: .alert)
            present(ac, animated: true)
            return
        }
        
        let vc = UIActivityViewController(activityItems: [image], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
