//
//  InfoVC.swift
//  Ottawa
//
//  Created by Minni K Ang on 2016-02-25.
//  Copyright © 2016 Minni K Ang. All rights reserved.
//

import UIKit

class InfoVC: UIViewController {

    
    @IBOutlet weak var historyText: UITextView!
    
    @IBOutlet weak var geographyText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        dispatch_async(dispatch_get_main_queue(), {self.historyText.scrollRangeToVisible(NSMakeRange(0, 0))} )
        dispatch_async(dispatch_get_main_queue(), {self.geographyText.scrollRangeToVisible(NSMakeRange(0, 0))} )
    }

}
