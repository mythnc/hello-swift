//
//  ViewController.swift
//  Weather-Query
//
//  Created by N.C on 2016/10/19.
//  Copyright © 2016年 N.C. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var queryText: UITextField!
    @IBOutlet weak var weatherSummary: UITextView!
    
    @IBAction func query(_ sender: AnyObject) {
        if let location = queryText.text {
            if location == "" {
                return
            }
            
            self.view.endEditing(true)
            queryLocation(location: location)
        }
    }
    
    func queryLocation(location: String) {
        let queryName = location.replacingOccurrences(of: " ", with: "-")
        print(queryName)
        if let url = URL(string :"http://weather-forecast.com/locations/\(queryName)/forecasts/latest") {
            let request = NSMutableURLRequest(url: url)
            let task = URLSession.shared.dataTask(with: request as URLRequest) {
                data, response, error in
                
                if error != nil {
                    print(error)
                } else {
                    if let unwrappedData = data {
                        let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        print(dataString)
                    }
                }
            }
            task.resume()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg.png")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        queryText.resignFirstResponder()
        if let location = queryText.text {
            if location == "" {
                return true
            }
            queryLocation(location: location)
        }
        return true
    }

}

