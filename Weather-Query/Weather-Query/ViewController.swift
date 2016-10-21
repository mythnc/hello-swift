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
        if let url = URL(string :"http://weather-forecast.com/locations/\(queryName)/forecasts/latest") {
            let request = NSMutableURLRequest(url: url)
            let task = URLSession.shared.dataTask(with: request as URLRequest) {
                data, response, error in
                
                if error != nil {
                    print(error)
                } else {
                    if let unwrappedData = data {
                        let dataObject = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        let queryFailed = "mistyped the address"
                        let summaryTitle = "Weather Forecast Summary:</b>"
                        
                        if let dataString = dataObject {
                            if dataString.contains(queryFailed) {
                                DispatchQueue.main.sync(execute: {
                                    self.weatherSummary.text = "The weather there couldn't be found. Please try again."
                                })
                            } else if dataString.contains(summaryTitle) {
                                let substringHead = dataString.range(of: summaryTitle)
                                let summaryStart = NSString(string: dataString.substring(from: substringHead.location + summaryTitle.characters.count))
                                
                                let spanStartTag = "<span class=\"phrase\">"
                                let spanStart = summaryStart.range(of: spanStartTag)
                                let descriptionStart = NSString(string: summaryStart.substring(from: spanStart.location + spanStartTag.characters.count))
                                
                                let spanEndTag = "</span>"
                                let spanEnd = descriptionStart.range(of: spanEndTag)
                                let description = descriptionStart.substring(to: spanEnd.location)
                                
                                DispatchQueue.main.sync(execute: {
                                    self.weatherSummary.text = description.replacingOccurrences(of: "&deg;", with: "°")
                                })
                            }
                        }
                    }
                }
            }
            task.resume()
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

