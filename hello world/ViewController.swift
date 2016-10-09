//
//  ViewController.swift
//  hello world
//
//  Created by N.C on 2016/10/8.
//  Copyright © 2016年 N.C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var catYear: UILabel!
    
    @IBAction func multipleButton(_ sender: AnyObject) {
        let catAge = Int(ageField.text!)! * 7
        catYear.text = String(catAge)
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

