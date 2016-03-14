//
//  SightsVC.swift
//  Ottawa
//
//  Created by Minni K Ang on 2016-03-02.
//  Copyright © 2016 Minni K Ang. All rights reserved.
//

import UIKit

class SightsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
 
    @IBOutlet weak var backButton: RoundedButton!
    
    var sightSection = SightsDataSource().loadSights()
    let dataSource = SightsDataSource()
    var sights = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.sights = dataSource.loadSightData()
       
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return 1
        return sightSection.count
    }

    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sightSection[section].heading
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sightSection[section].items.count
//        return sights.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let sight = self.sights[indexPath.row] as? Sight
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("sightDisplayCell", forIndexPath: indexPath) as? SightsTableViewCell {
            cell.sightName.text = sight?.name
            cell.sightPhoto.image = sight?.photo
            cell.sightText.text = sight?.text
            return cell
            
        } else {
        
            return SightsTableViewCell()
                
        }
    }
    
    @IBAction func goBack(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
