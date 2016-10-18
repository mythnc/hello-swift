//
//  SecondViewController.swift
//  To-Do-List
//
//  Created by N.C on 2016/10/18.
//  Copyright © 2016年 N.C. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var todoTextField: UITextField!

    @IBAction func addTodoButton(_ sender: AnyObject) {
        self.view.endEditing(true)
        addTodo()
    }
    
    func addTodo() {
        if let todoString = todoTextField.text {
            if todoString != "" {
                print("todo: \(todoString)")
                todoTextField.text = ""
            }
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
        // turn off the keyboard
        textField.resignFirstResponder()
        addTodo()
        return true
    }
}

