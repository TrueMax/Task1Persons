//
//  SecondViewController.swift
//  UserTable
//
//  Created by Maxim on 23.05.16.
//  Copyright © 2016 Maxim. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var persons2: [Person]?

    override func viewDidLoad() {
        super.viewDidLoad()
        persons2 = persons
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.separatorColor = .blueColor()
        tableView.separatorInset.right = 10
    }
    
    @IBAction func refreshTableData(sender: AnyObject) {
        tableView.reloadData()
    }
    
    // MARK: - tableView datasource methods
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons2!.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("SecondCell", forIndexPath: indexPath)
        cell.textLabel?.text = persons2![indexPath.row].personName
        cell.detailTextLabel?.text = persons2![indexPath.row].personCountry
        return cell
    }


}

