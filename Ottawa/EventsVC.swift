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
    
    @IBOutlet weak var festivalText: UITextView!
    
    @IBOutlet weak var cultureText: RoundedEdgeTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        dispatch_async(dispatch_get_main_queue(), {self.festivalText.scrollRangeToVisible(NSMakeRange(0, 0))} )
        dispatch_async(dispatch_get_main_queue(), {self.cultureText.scrollRangeToVisible(NSMakeRange(0, 0))} )
        
    }
    

    @IBAction func goAttractions(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
