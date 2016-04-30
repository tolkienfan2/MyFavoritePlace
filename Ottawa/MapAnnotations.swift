//
//  MapAnnotations.swift
//  Ottawa
//
//  Created by Minni K Ang on 2016-04-02.
//  Copyright © 2016 Minni K Ang. All rights reserved.
//

import Foundation
import MapKit

class MapAnnotations: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    
    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
    }
}