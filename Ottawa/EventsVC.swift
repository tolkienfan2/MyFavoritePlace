//
//  EventsVC.swift
//  Ottawa
//
//  Created by Minni K Ang on 2016-02-25.
//  Copyright © 2016 Minni K Ang. All rights reserved.
//

import UIKit

class EventsVC: UIViewController {
    
    @IBOutlet weak var backButton: RoundedButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func goAttractions(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
