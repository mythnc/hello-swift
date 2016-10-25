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
    @IBOutlet weak var winMsg: UILabel!
    
    let crossImg = UIImage(named: "cross.png")
    let noughtImg = UIImage(named: "nought.png")
    var isNought = false
    var record = Array(repeating: "", count: 9)
    var isFinished = false
    var isDisplayed = false
    var buttons: [UIButton] = [UIButton]()
    
    func setButtonImage(i: Int) {
        if record[i] != "" || isFinished {
            return
        }

        if !isNought {
            buttons[i].setBackgroundImage(noughtImg, for: .normal)
            record[i] = "O"
            isNought = true
            return
        }
        isNought = false
        buttons[i].setBackgroundImage(crossImg, for: .normal)
        record[i] = "X"
    }
    
    func isWin() -> Bool {
        let winConditions = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7],
                            [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        
        for winCondition in winConditions {
            if record[winCondition[0]] == record[winCondition[1]]
                && record[winCondition[1]] == record[winCondition[2]]
                && record[winCondition[0]] != "" {
                isFinished = true
                return true
            }
        }
        
        return false
    }
    
    @IBAction func reset(_ sender: AnyObject) {
        isNought = false
        isFinished = false
        isDisplayed = false
        winMsg.text = ""
        for i in 0...8 {
            buttons[i].setBackgroundImage(nil, for: .normal)
            record[i] = ""
        }
    }
    
    func displayWinMsg(i: Int) {
        if isDisplayed {
            return
        }
        winMsg.center = CGPoint(x: winMsg.center.x - 500, y: winMsg.center.y)
        
        UIView.animate(withDuration: 1) {
            self.winMsg.center = CGPoint(x: self.winMsg.center.x + 500, y: self.winMsg.center.y)
        }
        
        isDisplayed = true
        if record[i] == "O" {
            winMsg.text = "Nought has won!"
            return
        }
        winMsg.text = "Cross has won!"
    }
    
    @IBAction func buttonLeftTop(_ sender: AnyObject) {
        setButtonImage(i: 0)
        if isWin() {
            displayWinMsg(i: 0)
        }
    }
    
    @IBAction func buttonTop(_ sender: AnyObject) {
        setButtonImage(i: 1)
        if isWin() {
            displayWinMsg(i: 1)
        }
    }
    
    @IBAction func buttonRightTop(_ sender: AnyObject) {
        setButtonImage(i: 2)
        if isWin() {
            displayWinMsg(i: 2)
        }
    }
    
    @IBAction func buttonLeft(_ sender: AnyObject) {
        setButtonImage(i: 3)
        if isWin() {
            displayWinMsg(i: 3)
        }
    }
    
    @IBAction func buttonCenter(_ sender: AnyObject) {
        setButtonImage(i: 4)
        if isWin() {
            displayWinMsg(i: 4)
        }
    }
    
    @IBAction func buttonRight(_ sender: AnyObject) {
        setButtonImage(i: 5)
        if isWin() {
            displayWinMsg(i: 5)
        }
    }
    
    @IBAction func buttonDownLeft(_ sender: AnyObject) {
        setButtonImage(i: 6)
        if isWin() {
            displayWinMsg(i: 6)
        }
    }
    
    @IBAction func buttonDown(_ sender: AnyObject) {
        setButtonImage(i: 7)
        if isWin() {
            displayWinMsg(i: 7)
        }
    }
    
    @IBAction func buttonDownRight(_ sender: AnyObject) {
        setButtonImage(i: 8)
        if isWin() {
            displayWinMsg(i: 8)
        }
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

