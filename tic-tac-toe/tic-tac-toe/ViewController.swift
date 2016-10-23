//
//  ViewController.swift
//  Tic-Tac-Toe
//
//  Created by N.C on 2016/10/23.
//  Copyright © 2016年 N.C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    
    let crossImg = UIImage(named: "cross.png")
    let noughtImg = UIImage(named: "nought.png")
    var isNought = false
    var isPressed = Array(repeating: false, count: 9)
    var buttons: [UIButton] = [UIButton]()
    
    func setButtonImage(i: Int) {
        if isPressed[i] {
            return
        }
        
        isPressed[i] = true
        if !isNought {
            buttons[i].setBackgroundImage(noughtImg, for: .normal)
            isNought = true
            return
        }
        isNought = false
        buttons[i].setBackgroundImage(crossImg, for: .normal)
    }
    
    @IBAction func buttonLeftTop(_ sender: AnyObject) {
        setButtonImage(i: 0)
    }
    
    @IBAction func buttonTop(_ sender: AnyObject) {
        setButtonImage(i: 1)
    }
    
    @IBAction func buttonRightTop(_ sender: AnyObject) {
        setButtonImage(i: 2)
    }
    
    @IBAction func buttonLeft(_ sender: AnyObject) {
        setButtonImage(i: 3)
    }
    
    @IBAction func buttonCenter(_ sender: AnyObject) {
        setButtonImage(i: 4)
    }
    
    @IBAction func buttonRight(_ sender: AnyObject) {
        setButtonImage(i: 5)
    }
    
    @IBAction func buttonDownLeft(_ sender: AnyObject) {
        setButtonImage(i: 6)
    }
    
    @IBAction func buttonDown(_ sender: AnyObject) {
        setButtonImage(i: 7)
    }
    
    @IBAction func buttonDownRight(_ sender: AnyObject) {
        setButtonImage(i: 8)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.buttons = [
            self.button0, self.button1, self.button2, self.button3,
            self.button4, self.button5, self.button6, self.button7,
            self.button8
        ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

