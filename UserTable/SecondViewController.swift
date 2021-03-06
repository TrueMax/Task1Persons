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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.separatorColor = .blueColor()
        tableView.separatorInset.right = 10
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    @IBAction func refreshTableData(sender: AnyObject) {
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)){
        let randomIndex = Int(arc4random_uniform(UInt32(persons.count)))
        persons = changePersons(persons, index: randomIndex)
        }
        dispatch_async(dispatch_get_main_queue()){
        self.tableView.reloadData()
        }
    }
    
    // MARK: - tableView datasource methods
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("SecondCell", forIndexPath: indexPath)
        cell.textLabel?.text = persons[indexPath.row].personName
        cell.detailTextLabel?.text = persons[indexPath.row].personCountry
        return cell
    }


}

