//
//  ViewController.swift
//  RockPaperSiccors
//
//  Created by Rodrick Musser on 1/18/16.
//  Copyright © 2016 RodCo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func choosePaper(sender: AnyObject) {
        
        //Get the results view controller
        var controller: ResultsViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultsViewController") as! ResultsViewController
        
        controller.player = 0
        controller.computer = Int(arc4random_uniform(3))
        
        self.presentViewController(controller, animated: true, completion: nil)
        
    }

    @IBAction func chooseRock(sender: AnyObject) {
        
        
        
        performSegueWithIdentifier("chooseRock", sender: self)
        
    }
    
    
    override func prepareForSegue(_ segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "chooseRock" {
            let controller = segue.destinationViewController as! ResultsViewController
            
            controller.player = 1
            controller.computer = Int(arc4random_uniform(3))
        } else if segue.identifier == "chooseScissors" {
            let controller = segue.destinationViewController as! ResultsViewController
            
            controller.player = 2
            controller.computer = Int(arc4random_uniform(3))
        }
    }

}

