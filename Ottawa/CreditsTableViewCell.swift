//
//  CreditsTableViewCell.swift
//  Ottawa
//
//  Created by Minni K Ang on 2016-03-15.
//  Copyright © 2016 Minni K Ang. All rights reserved.
//

import UIKit

class CreditsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var creditLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configureCell (credits: String) {
        creditLabel.text = credits
    }
}
