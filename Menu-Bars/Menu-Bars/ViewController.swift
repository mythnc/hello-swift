//
//  ViewController.swift
//  Menu-Bars
//
//  Created by N.C on 2016/10/16.
//  Copyright © 2016年 N.C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let START_TIME = 210
    var timer = Timer()
    var time = 210
    var isPlayed = false
    @IBOutlet weak var eggTime: UILabel!
    
    func decreaseTimer() {
        time -= 1
        if time >= 0 {
            eggTime.text = String(time)
        }
    }
    
    @IBAction func playButton(_ sender: AnyObject) {
        if !isPlayed {
            isPlayed = true
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
        }
    }
    
    @IBAction func pauseButton(_ sender: AnyObject) {
        isPlayed = false
        timer.invalidate()
    }
    
    @IBAction func plus10secButton(_ sender: AnyObject) {
        self.adjustTimeView(time: time + 10)
    }
    
    @IBAction func minus10secButton(_ sender: AnyObject) {
        if time >= 10 {
            self.adjustTimeView(time: time - 10)
        }
    }
    
    @IBAction func resetButton(_ sender: AnyObject) {
        self.adjustTimeView(time: self.START_TIME)
    }
    
    func adjustTimeView(time: Int) {
        self.time = time
        eggTime.text = String(time)
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

