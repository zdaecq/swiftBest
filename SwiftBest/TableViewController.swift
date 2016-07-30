//
//  TableViewController.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 09.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    //override func viewDidLoad() {
        //super.viewDidLoad()
    //}
    
    @IBAction func actionTopButton(sender: UIButton) {
        UIAlertController(title: "Hi", message: "Test").show()
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(TableViewCell.self, forIndexPath: indexPath)
        cell.name.text = "Index \(indexPath.row)"
        return cell
    }
}
