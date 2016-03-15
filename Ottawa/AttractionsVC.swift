//
//  AttractionsVC.swift
//  Ottawa
//
//  Created by Minni K Ang on 2016-02-27.
//  Copyright © 2016 Minni K Ang. All rights reserved.
//

import UIKit

class AttractionsVC: UIViewController {

    
    @IBOutlet weak var sightsButton: RoundedButton!
    
    @IBOutlet weak var eventsButton: RoundedButton!
    
    @IBOutlet weak var winterludeButton: RoundedButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func goWinterlude(sender: AnyObject) {
        performSegueWithIdentifier("goWinterlude", sender: nil)
    }
    
    @IBAction func goSights(sender: AnyObject) {
         performSegueWithIdentifier("goSights", sender: nil)
    }
    
    @IBAction func goEvents(sender: AnyObject) {
        performSegueWithIdentifier("goEvents", sender: nil)
    }

}
