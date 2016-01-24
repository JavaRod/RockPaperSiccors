//
//  ResultsViewController.swift
//  RockPaperSiccors
//
//  Created by Rodrick Musser on 1/18/16.
//  Copyright © 2016 RodCo. All rights reserved.
//

import UIKit

class ResultsViewController : UIViewController {
    
    // 0 = paper
    // 1 = rock
    // 2 = scissors
    
    @IBOutlet weak var outcome: UILabel!
    var player: Int!
    var computer: Int!
    
   
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if (player == computer) {
            outcome.text = "It's a tie!"
            imageView.image = UIImage(named: "itsATie")
        } else if (player == 0 && computer == 1) {
            outcome.text = "You win"
            imageView.image = UIImage(named: "PaperCoversRock")
        } else if (player == 0 && computer == 2) {
            outcome.text = "You lose"
            imageView.image = UIImage(named: "ScissorsCutPaper")
        } else if (player == 1 && computer == 0) {
            outcome.text = "You lose"
            imageView.image = UIImage(named: "PaperCoversRock")
        } else if (player == 1 && computer == 2) {
            outcome.text = "You win"
            imageView.image = UIImage(named: "RockCrushesScissors")
        } else if (player == 2 && computer == 0) {
            outcome.text = "You win"
            imageView.image = UIImage(named: "ScissorsCutPaper")
        } else if (player == 2 && computer == 1) {
            outcome.text = "You lose"
            imageView.image = UIImage(named: "RockCrushesScissors")
        }
        
    }
    
    @IBAction func playAgainPressed(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}


