//
//  RoundedButton.swift
//  Ottawa
//
//  Created by Minni K Ang on 2016-02-21.
//  Copyright © 2016 Minni K Ang. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {

    override func awakeFromNib() {
        
        self.layer.cornerRadius = 5.0
        self.backgroundColor = UIColor(red: 63.0/255.0, green: 128.0/255.0, blue: 203.0/255.0, alpha: 1.0)
    }
    
    
}
