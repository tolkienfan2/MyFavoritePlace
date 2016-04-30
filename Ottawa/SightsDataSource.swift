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
        
        let sight1 = Sight(name: "National Gallery of Canada", photo: UIImage(named: "NationalGallery")!,
            address: "380 Sussex Drive, downtown",
            location: "380 Sussex Drive, Ottawa, Ontario, Canada",
            text:
            "1200 art works from the Middle Ages to the present day, displayed on rotation with special exhibitions all year round.")
        
        let sight2 = Sight(name: "Canadian Museum of Nature", photo: UIImage(named: "NatureMuseum")!,
            address: "240 McLeod Street, downtown",
            location: "240 McLeod St, Ottawa, Ontario, Canada",
            text:
            "Huge collections of natural history exhibits: animals (including dinosaurs and prehistoric mammals), minerals, fossils and plants. ")
        
        let sight3 = Sight(name: "Canadian Museum of History", photo: UIImage(named: "HistoryMuseum")!,
            address: "100 Laurier Street, Gatineau",
            location: "100 Laurier St, Gatineau, Quebec, Canada",
            text:
            "Canada's most visited museum, with detailed insight into 20 thousand years of human history. Includes the Canadian Children's Museum.")
        
        let sight4 = Sight(name: "Canadian War Museum", photo: UIImage(named: "WarMuseum")!,
            address: "1 Vimy Place, downtown",
            location: "1 Vimy Place, Ottawa, Ontario, Canada",
            text:
            "Covers all aspects of Canada's military history, with emphasis on the human experience of war.")
        
        let sight5 = Sight(name: "Diefenbunker", photo: UIImage(named: "Diefenbunker")!,
            address: "3929 Carp Road, Carp",
            location: "3929, Carp Rd, Carp, Ontario, Canada",
            text:
            "Cold War museum, located in an enormous underground bunker designed to house Canada's government in case of nuclear war.")
        
        let sight6 = Sight(name: "Canada Agriculture and Food Museum", photo: UIImage(named: "AgriMuseum")!,
            address: "861 Prince of Wales Drive",
            location: "861 Prince of Wales Drive, Ottawa, Ontario, Canada",
            text:
            "Canada’s unique agricultural heritage is featured here, where you can explore the sights and sounds of typical farm life.")
        
        let sight7 = Sight(name: "Canada Science and Technology Museum", photo: UIImage(named: "ScienceMuseum")!,
            address: "2421 Lancaster Road",
            location: "2421 Lancaster Road, Ottawa, Ontario, Canada",
            text:
            "Currently closed for renovation, the museum is set to reopen in the fall of 2017 with five all-new main galleries.")
        
        let sight8 = Sight(name: "Canada Aviation and Space Museum", photo: UIImage(named: "SpaceMuseum")!,
            address: "11 Aviation Parkway",
            location: "11 Aviation Parkway, Ottawa, Ontario, Canada",
            text:
            "Over 130 original aircraft from around the world. Try the flight simulator or come in the summer and take a short flight in a 1939 biplane.")
        
        let sight9 = Sight(name: "Parliament Hill", photo: UIImage(named: "ParliamentHill")!,
            address: "11 Wellington Street, downtown",
            location: "11 Wellington Street, Ottawa, Ontario, Canada",
            text:
            "Discover the history, functions and art of Canada’s Parliament with a free guided tour. Home to Canada's government.")
        
        let sight10 = Sight(name: "Chateau Laurier", photo: UIImage(named: "ChateauLaurier")!,
            address: "1 Rideau Street, downtown",
            location: "1 Rideau Street, Ottawa, Ontario, Canada",
            text:
            "Designated a national historic site since 1980, this Ottawa landmark is a hotel designed in French Gothic Châteauesque style to complement the adjacent Parliament buildings.")
        
        let sight11 = Sight(name: "24 Sussex Drive", photo: UIImage(named: "24Sussex")!,
            address: "24 Sussex Drive, downtown",
            location: "24 Sussex Drive, Ottawa, Ontario, Canada",
            text:
            "Completed in 1868, 24 Sussex has been the official residence of Canada's Prime Minister since 1951. Now awaiting major renovations, current Prime Minister Justin Trudeau and his family however live elsewhere.")
        
        let sight12 = Sight(name: "Notre Dame Basilica", photo: UIImage(named: "NotreDame")!,
            address: "385 Sussex Drive, downtown",
            location: "385 Sussex Drive, Ottawa, Ontario, Canada",
            text:
            "Ottawa's oldest standing church, and an exceptional example of the Gothic Revival architectural style.")
        
        let sight13 = Sight(name: "Rideau Hall", photo: UIImage(named: "RideauHall")!,
            address: "1 Sussex Drive, downtown",
            location: "1 Sussex Drive, Ottawa, Ontario, Canada",
            text:
            "The official residence in Ottawa of the Canadian monarch and the Governor General of Canada. Open to the public for guided tours.")
        
        let sight14 = Sight(name: "Confederation Square", photo: UIImage(named: "Square")!,
            address: "Elgin & Wellington intersection",
            location: "Confederation Square, Ottawa, Ontario, Canada",
            text:
            "The second most important ceremonial centre in Ottawa, after Parliament Hill, and site of the National War Memorial with the Tomb of the Unknown Soldier.")
        
        let sight15 = Sight(name: "Royal Canadian Mint", photo: UIImage(named: "Mint")!,
            address: "320 Sussex Drive, downtown",
            location: "320 Sussex Drive, Ottawa, Ontario, Canada",
            text:
            "Produces all of Canada's circulation coins and manufactures circulation coins on behalf of other countries. Open to the public for guided tours.")
        
        let sight16 = Sight(name: "Ottawa City Hall", photo: UIImage(named: "CityHall")!,
            address: "110 Laurier Avenue West, downtown",
            location: "110 Laurier Avenue West, Ottawa, Ontario, Canada",
            text:
            "Two connected buildings: modern wing and heritage building built in 1875. Grounds include fountains and an outdoor ice skating rink.")

        let sight17 = Sight(name: "Rideau Canal (UNESCO World Heritage Site)", photo: UIImage(named: "RideauCanal")!,
            address: "Between Chateau Laurier and Parliament Hill, downtown",
            location: "Rideau Locks, Ottawa, Ontario, Canada",
            text:
            "The oldest continuously operated canal system in North America, originally opened for military purposes in 1832 but now used mainly for pleasure boating.")

        sights = [sight1, sight2, sight3, sight4, sight5, sight6, sight7, sight8, sight9, sight10, sight11, sight12, sight13, sight14, sight15, sight16, sight17]
    }
    
    func loadSightData() -> [Sight] {
        return sights
    }
    
}