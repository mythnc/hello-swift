//
//  ViewController.swift
//  Is it prime
//
//  Created by N.C on 2016/10/16.
//  Copyright © 2016年 N.C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputN: UITextField!
    @IBOutlet weak var output: UILabel!
    
    @IBAction func primeButton(_ sender: AnyObject) {
        if let userEnteredString = inputN.text {
            let userEnteredInt = Int(userEnteredString)
            if let number = userEnteredInt {
                if isPrime(n: number) {
                    output.text = "\(number) is prime"
                } else {
                    output.text = "\(number) is not prime"
                }
            } else {
                output.text = "Please enter a positive number"
            }
        }
    }
    
    func isPrime(n: Int) -> Bool {
        if n == 2 {
            return true
        }
        if n % 2 == 0 {
            return false
        }
        
        var i = 3
        let sqrt_n = Int(floor(sqrt(Double(n))))
        while (i <= sqrt_n) {
            if (n % i == 0) {
                return false
            }
            i += 2
        }
        return true
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

