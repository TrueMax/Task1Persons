//
//  FirstViewController.swift
//  UserTable
//
//  Created by Maxim on 23.05.16.
//  Copyright © 2016 Maxim. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var persons1: [Person]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        persons1 = persons
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorInset.right = 10
        tableView.separatorColor = .blueColor()
    }
    
    @IBAction func refreshTableData(sender: AnyObject) {
        tableView.reloadData()
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons1!.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCellWithIdentifier("FirstCell", forIndexPath: indexPath)
        cell.textLabel?.text = persons1![indexPath.row].personID.UUIDString
        print(persons1![indexPath.row].personID.UUIDString)
        cell.detailTextLabel?.text = persons1![indexPath.row].personName
        print(persons1![indexPath.row].personName)
        return cell
    }

}

