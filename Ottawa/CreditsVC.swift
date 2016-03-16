//
//  CreditsVC.swift
//  Ottawa
//
//  Created by Minni K Ang on 2016-03-15.
//  Copyright © 2016 Minni K Ang. All rights reserved.
//

import UIKit

class CreditsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var backButton: RoundedButton!
    
    let dataSource = CreditsData()
    var credits = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.credits = dataSource.loadCreditsData()
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return credits.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let credit = self.credits[indexPath.row] as? Credits
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("creditsCell", forIndexPath: indexPath) as? CreditsTableViewCell {
            cell.creditLabel.text = credit?.credits
            return cell
            
        } else {
            
            return CreditsTableViewCell()
        }
    }
    
    @IBAction func backButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}