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
    
    let dataSource = SightsDataSource()
    var sights = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.sights = dataSource.loadSightData()
       
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sights.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let sight = self.sights[indexPath.row] as? Sight
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("sightDisplayCell", forIndexPath: indexPath) as? SightsTableViewCell {
            cell.sightName.text = sight?.name
            cell.sightPhoto.image = sight?.photo
            cell.sightAddress.text = sight?.address
            cell.sightText.text = sight?.text
            return cell
            
        } else {
        
            return SightsTableViewCell()
                
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if let sight = self.sights[indexPath.row] as? Sight {
            
            performSegueWithIdentifier("SightDetail", sender: sight)
            
        } else {
            
            print("no sight found")
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SightDetail" {
            if let detailVC = segue.destinationViewController as? SightsDetailVC {
                if let sight = sender as? Sight {
                    detailVC.sight = sight
                }
            }
        }
    }
    
    @IBAction func goBack(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
