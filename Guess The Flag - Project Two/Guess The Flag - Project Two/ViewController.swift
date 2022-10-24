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
    var correctAnswer = 0
    var questionsMade = 0
    var countries: [String] = [
        "estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        askQuestion()
    }
    
    private func askQuestion(action: UIAlertAction! = nil) {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        questionsMade += 1
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        navigationItem.titleView = setTitle(title: countries[correctAnswer].uppercased(), subtitle: "Score: \(score)")
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        let ac: UIAlertController
        
        if sender.tag == correctAnswer {
            score += 1
            ac = UIAlertController(title: "Correct", message: "Your score is \(score)", preferredStyle: .alert)
        } else {
            ac = UIAlertController(title: "Wrong", message: "Your score is \(score)", preferredStyle: .alert)
        }
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        present(ac, animated: true)
        
        if questionsMade == 10 {
            let ac = UIAlertController(title: "End of the game", message: "You reached \(score) of \(questionsMade) points", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Play again", style: .default, handler: askQuestion))
            present(ac, animated: true)
            score = 0
            questionsMade = 0
        }
    }
    
    private func setTitle(title:String, subtitle:String) -> UIView {
        let titleLabel = UILabel(frame: CGRectMake(0, -2, 0, 0))

        titleLabel.backgroundColor = UIColor.clear
        titleLabel.font = UIFont.boldSystemFont(ofSize: 17)
        titleLabel.text = title
        titleLabel.sizeToFit()

        let subtitleLabel = UILabel(frame: CGRectMake(0, 18, 0, 0))
        subtitleLabel.backgroundColor = UIColor.clear
        subtitleLabel.font = UIFont.systemFont(ofSize: 12)
        subtitleLabel.text = subtitle
        subtitleLabel.sizeToFit()

        let titleView = UIView(frame: CGRectMake(0, 0, max(titleLabel.frame.size.width, subtitleLabel.frame.size.width), 30))
        titleView.addSubview(titleLabel)
        titleView.addSubview(subtitleLabel)

        let widthDiff = subtitleLabel.frame.size.width - titleLabel.frame.size.width

        if widthDiff < 0 {
            let newX = widthDiff / 2
            subtitleLabel.frame.origin.x = abs(newX)
        } else {
            let newX = widthDiff / 2
            titleLabel.frame.origin.x = newX
        }

        return titleView
    }
}

