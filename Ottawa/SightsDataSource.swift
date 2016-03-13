//
//  SightsDataSource.swift
//  Ottawa
//
//  Created by Minni K Ang on 2016-03-02.
//  Copyright © 2016 Minni K Ang. All rights reserved.
//

import Foundation
import UIKit

class SightsDataSource {
    
    var sights: [Sight]
    
    init() {
        
        let sight1 = Sight(name: "National Gallery of Canada", photo: UIImage(named: "NationalGallery")!, text: "More Information")
        let sight2 = Sight(name: "Canadian Museum of Nature", photo: UIImage(named: "NatureMuseum")!, text: "More Information")
        let sight3 = Sight(name: "Canadian Museum of History", photo: UIImage(named: "HistoryMuseum")!, text: "More Information")
        let sight4 = Sight(name: "Canadian War Museum", photo: UIImage(named: "WarMuseum")!, text: "More Information")
        let sight5 = Sight(name: "Diefenbunker", photo: UIImage(named: "Diefenbunker")!, text: "More Information")
        let sight6 = Sight(name: "Canada Agriculture Museum", photo: UIImage(named: "AgriMuseum")!, text: "More Information")
        let sight7 = Sight(name: "Canada Science and Technology Museum", photo: UIImage(named: "ScienceMuseum")!, text: "More Information")
        let sight8 = Sight(name: "Canada Aviation and Space Museum", photo: UIImage(named: "SpaceMuseum")!, text: "More Information")
        let sight9 = Sight(name: "Parliament Hill", photo: UIImage(named: "ParliamentHill")!, text: "More Information")
        let sight10 = Sight(name: "Chateau Laurier", photo: UIImage(named: "ChateauLaurier")!, text: "More Information")
        let sight11 = Sight(name: "24 Sussex Drive", photo: UIImage(named: "24Sussex")!, text: "More Information")
        let sight12 = Sight(name: "Notre Dame Basilica", photo: UIImage(named: "NotreDame")!, text: "More Information")
        let sight13 = Sight(name: "Rideau Hall", photo: UIImage(named: "RideauHall")!, text: "More Information")
        let sight14 = Sight(name: "Confederation Square", photo: UIImage(named: "Square")!, text: "More Information")
        let sight15 = Sight(name: "Royal Canadian Mint", photo: UIImage(named: "Mint")!, text: "More Information")
        
        sights = [sight1, sight2, sight3, sight4, sight5, sight6, sight7, sight8, sight9, sight10, sight11, sight12, sight13, sight14, sight15]
    }
    
    func loadSightData() -> [Sight] {
        return sights
    }
    
    
    func loadSights() -> [Section] {
        
        var sightsArray = [Section]()
        
        var objects = [Sight]()
        
        let museums = Section(title: "Museums", objects: [objects[0], objects[1], objects[2], objects[3], objects[4], objects[5], objects[6], objects[7]])
        let landmarks = Section(title: "Landmarks", objects: [objects[8], objects[9], objects[10], objects[11], objects[12], objects[13], objects[14]])
        
        sightsArray.append(museums)
        sightsArray.append(landmarks)
        
        return sightsArray
    }
    
    
}