//
//  ViewController.swift
//  CardGame
//
//  Created by Lisette Antigua on 2/9/23.
//

import UIKit

class ViewController: UIViewController {
    var score = 0
    var cardValue = 0
    var NewCardValue = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cardValue = Int.random(in: 1 ... 13)
        
        Score.text = "Score: \(score)"
        image.image = UIImage(named:"\(cardValue)")
    }
        weak var image: UIImageView!
        weak var Score: UILabel!
        weak var lower: UIButton!
        weak var higher: UIButton!
 
    
    func loweButton(_ sender: Any) {
        NewCardValue = randomNum()
        image.image = UIImage(named: "\(NewCardValue)")
        if NewCardValue < cardValue {
            score += 1
            cardValue = NewCardValue
            Score.text = "Score: \(score)"
        }
        else {
            Score.text = "Game Over"
            score = 0
        }
    
    }
    
    
    func higherButton(_ sender: Any) {
        NewCardValue = randomNum()
        image.image = UIImage(named:"\(NewCardValue)")
        if NewCardValue > cardValue {
            score += 1
            cardValue = NewCardValue
            Score.text = "Score: \(score)"
        }
        else {
            Score.text = "Game Over"
            score = 0
        }
    }
    
    func randomNum () -> Int {
        return Int.random(in: 1 ... 13)
    }

}

