//
//  RoundedEdgeImage.swift
//  Ottawa
//
//  Created by Minni K Ang on 2016-02-29.
//  Copyright © 2016 Minni K Ang. All rights reserved.
//

import UIKit

class RoundedEdgeImage: UIImageView {

    override func awakeFromNib() {
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }

}
