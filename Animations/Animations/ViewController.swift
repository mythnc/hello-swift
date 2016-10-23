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
    
    @IBAction func fadeIn(_ sender: AnyObject) {
        image.alpha = 0
        
        UIView.animate(withDuration: 1, animations: {
            self.image.alpha = 1
        })
        
    }
    
    @IBAction func slideIn(_ sender: AnyObject) {
        image.center = CGPoint(x: image.center.x - 500, y: image.center.y)
        
        UIView.animate(withDuration: 2) {
            self.image.center = CGPoint(x: self.image.center.x + 500, y: self.image.center.y)
        }
    }
    
    @IBAction func grow(_ sender: AnyObject) {
        // set size
        image.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
        UIView.animate(withDuration: 1) {
            self.image.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
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

