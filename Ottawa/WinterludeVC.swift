//
//  WinterludeVC.swift
//  Ottawa
//
//  Created by Minni K Ang on 2016-02-25.
//  Copyright © 2016 Minni K Ang. All rights reserved.
//

import UIKit

class WinterludeVC: UIViewController {

    @IBOutlet weak var backButton: RoundedButton!
    @IBOutlet weak var winterludeText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        dispatch_async(dispatch_get_main_queue(), {self.winterludeText.scrollRangeToVisible(NSMakeRange(0, 0))} )

    }
    
    @IBAction func goAttractions(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}