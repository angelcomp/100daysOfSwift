//
//  ViewController.swift
//  Guess The Flag - Project Two
//
//  Created by Angelica dos Santos on 21/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    var score = 0
    var countries: [String] = [
        "estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        askQuestion()
        
    }
    
    func askQuestion() {
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
    }
}

