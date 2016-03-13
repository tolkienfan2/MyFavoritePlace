//
//  SightsTableViewCell.swift
//  Ottawa
//
//  Created by Minni K Ang on 2016-03-02.
//  Copyright © 2016 Minni K Ang. All rights reserved.
//

import UIKit

class SightsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var sightName: UILabel!
    
    @IBOutlet weak var sightPhoto: UIImageView!
  
    @IBOutlet weak var sightText: UILabel!

    override func awakeFromNib() {

        super.awakeFromNib()
        sightPhoto.layer.cornerRadius = 5.0
        sightPhoto.clipsToBounds = true

    }

    func configureCell(name: String, photo: UIImage, text: String) {
    
        sightName.text = name
        sightPhoto.image = photo
        sightText.text = text
        
    }

}
