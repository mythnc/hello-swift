//
//  ViewController.swift
//  Animations
//
//  Created by N.C on 2016/10/23.
//  Copyright © 2016年 N.C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var image: UIImageView!
    var i = 0
    let IMAGE_NUMBER = 35
    var isStrted = false
    var timer = Timer()
    
    func play() {
        image.image = UIImage(named: "frame_\(i)_delay-0.1s.gif")
        i += 1
        if i == IMAGE_NUMBER {
            i = 0
        }
    }
    
    @IBAction func animate(_ sender: AnyObject) {
        isStrted = !isStrted
        if isStrted {
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.play), userInfo: nil, repeats: true)
            button.setTitle("Stop", for: [])
        } else {
            timer.invalidate()
            button.setTitle("Start", for: [])
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

