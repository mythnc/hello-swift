//
//  FirstViewController.swift
//  To-Do-List
//
//  Created by N.C on 2016/10/18.
//  Copyright © 2016年 N.C. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var items = [String]()
    @IBOutlet weak var table: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        if let savedItems = itemsObject as? [String] {
            items = savedItems
            table.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        if let savedItems = itemsObject as? [String] {
            items = savedItems
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

