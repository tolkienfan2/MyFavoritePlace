//
//  Sight.swift
//  Ottawa
//
//  Created by Minni K Ang on 2016-03-13.
//  Copyright © 2016 Minni K Ang. All rights reserved.
//

import Foundation
import UIKit

class Sight {
    
    var name: String
    var photo: UIImage?
    var address: String
    var text: String
    var location: String
    
    init(name: String, photo: UIImage?, address: String, location: String, text: String) {
        self.name = name
        self.photo = photo
        self.address = address
        self.text = text
        self.location = location
        
    }
}