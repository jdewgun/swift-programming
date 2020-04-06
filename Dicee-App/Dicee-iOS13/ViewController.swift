//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Jatan Dewgun on 03/04/2020.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // IBOutlet allows to reference the UI elements on the app
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumber = 4
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix") ]
        diceImageViewOne.image = diceArray.randomElement()
        diceImageViewTwo.image = diceArray.randomElement()
        
    }
    
    
    

}

