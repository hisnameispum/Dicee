//
//  ViewController.swift
//  Dicee
//
//  Created by Mac OS on 28/12/2561 BE.
//  Copyright © 2561 sirux. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var arrayDice = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var totalScore: UILabel!
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func onButtonPressed(_ sender: UIButton) {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: arrayDice[randomDiceIndex1])
        diceImageView2.image = UIImage(named: arrayDice[randomDiceIndex2])
        
    }
    
}

