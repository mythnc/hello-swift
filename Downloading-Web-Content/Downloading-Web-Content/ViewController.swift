//
//  ViewController.swift
//  Downloading-Web-Content
//
//  Created by N.C on 2016/10/19.
//  Copyright © 2016年 N.C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // optional type
        /*
         let url = URL(string: "https://www.google.com.tw")!
         // webview.loadRequest(URLRequest(url: url))
         
         webview.loadHTMLString("<h1>Hello World!</h1>", baseURL: nil)
         */
        
        if let url = URL(string: "https://stackoverflow.com") {
            let request = NSMutableURLRequest(url: url)
            // task is async
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
            // run the task
            task.resume()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

