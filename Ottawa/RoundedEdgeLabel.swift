//
//  RoundedEdgeLabel.swift
//  Ottawa
//
//  Created by Minni K Ang on 2016-03-15.
//  Copyright © 2016 Minni K Ang. All rights reserved.
//

import UIKit

class RoundedEdgeLabel: UILabel {

    override func awakeFromNib() {
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }
    

}
