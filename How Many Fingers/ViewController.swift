//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Chloe Marshall on 11/21/16.
//  Copyright © 2016 Marshall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var guessText: UITextField!
    
    @IBOutlet var resultText: UILabel!
    
    @IBAction func guessButton(_ sender: AnyObject) {
        let random = String(arc4random_uniform(6))
        
        if guessText.text == random{
            resultText.text = "You've guess correctly!"
        }else{
            resultText.text = "Incorrect"+random+"."
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

