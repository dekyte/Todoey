//
//  ViewController.swift
//  Todoey
//
//  Created by Dan Kyte on 2/1/19.
//  Copyright © 2019 Swallow Way Technology. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Item 1", "Item 2", "Item 3"]
    let cellID = "ToDoItemCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    //MARK - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as UITableViewCell?
        
        cell?.textLabel?.text = itemArray[indexPath.row]
        
        return cell!
    }
    
    //Mark - Tableview Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

