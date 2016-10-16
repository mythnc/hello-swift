//
//  ViewController.swift
//  hello world
//
//  Created by N.C on 2016/10/8.
//  Copyright © 2016年 N.C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var guessN: UITextField!
    
    @IBOutlet weak var answerDisplay: UILabel!
    
    @IBAction func guessButton(_ sender: AnyObject) {
        let n = arc4random_uniform(6)
        
        if guessN.text == String(n) {
            answerDisplay.text = "You're right!"
        } else {
            answerDisplay.text = "Wrong! It was a \(n)."
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

