//
//  ViewController.swift
//  Permanent-Data-Storage
//
//  Created by N.C on 2016/10/16.
//  Copyright © 2016年 N.C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // save string
        UserDefaults.standard.set("nc", forKey: "name")
        let nameObject = UserDefaults.standard.object(forKey: "name")
        if let name = nameObject as? String {
            print(name)
        }
        
        // save array
        let arr = [1, 2, 3, 4]
        UserDefaults.standard.set(arr, forKey: "array")
        
        let arrayObj = UserDefaults.standard.object(forKey: "array")
        if let array = arrayObj as? NSArray {
            print(array)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

