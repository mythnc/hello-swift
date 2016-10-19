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
        if let item = todoTextField.text {
            if item == "" {
                return
            }
            
            self.view.endEditing(true)
            addTodo(item: item)
        }
    }
    
    func addTodo(item: String) {
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        if var items = itemsObject as? [String] {
            items.append(item)
            UserDefaults.standard.set(items, forKey: "items")
        } else {
            let items = [item]
            UserDefaults.standard.set(items, forKey: "items")
        }
        todoTextField.text = ""
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
        if let item = todoTextField.text {
            if item == "" {
                return true
            }

            addTodo(item: item)
        }
        return true
    }
}

