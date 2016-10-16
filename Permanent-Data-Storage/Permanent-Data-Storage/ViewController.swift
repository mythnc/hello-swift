//
//  ViewController.swift
//  Permanent-Data-Storage
//
//  Created by N.C on 2016/10/16.
//  Copyright © 2016年 N.C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var displayNumber: UILabel!
    
    @IBAction func saveButton(_ sender: AnyObject) {
        if let phoneString = phoneNumber.text {
            UserDefaults.standard.set(phoneString, forKey: "phoneNumber")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let phoneObject = UserDefaults.standard.object(forKey: "phoneNumber")
        if let phoneN = phoneObject as? String {
            displayNumber.text = phoneN
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

