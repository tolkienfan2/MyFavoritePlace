//
//  Sight.swift
//  Ottawa
//
//  Created by Minni K Ang on 2016-03-13.
//  Copyright © 2016 Minni K Ang. All rights reserved.
//

import Foundation
import UIKit

struct Section {
    var heading: String
    var items: [Sight]
    
    init(title: String, objects: [Sight]) {
        heading = title
        items = objects
    }
}


class Sight {
    
    var name: String
    var photo: UIImage?
    var text: String
    
    init(name: String, photo: UIImage?, text: String) {
        self.name = name
        self.photo = photo
        self.text = text
        
    }
}