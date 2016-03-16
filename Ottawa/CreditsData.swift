//
//  CreditsData.swift
//  Ottawa
//
//  Created by Minni K Ang on 2016-03-15.
//  Copyright © 2016 Minni K Ang. All rights reserved.
//

import Foundation
import UIKit

class CreditsData {
    
    var credits: [Credits]
    
    init() {
        
        let iconCredit = Credits(credits: "Tab bar icons by Icons8.com via Creative Commons Attribution-NoDerivs 3.0 Unported license.")
        
        let credit1 = Credits(credits: "Skating on the Rideau Canal, by Saffron Blaze - Own work, Resolution restricted-by-sa, https://commons.wikimedia.org/w/index.php?curid=31225428")

        let credit2 = Credits(credits: "Ottawa - On - Parliament Buildings National Historic Site of Canada – Night, by Y Anderson - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=21606520")
        
        let credit3 = Credits(credits: "Canada_Ottawa_Panorama, by G. Baranski - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=6969075")
        
        let credit4 = Credits(credits: "Prime Minister Justin Trudeau attends the National Remembrance Day ceremony in Ottawa, by the Office of the Prime Minister http://pm.gc.ca/eng/node/39925")
        
        let credit5 = Credits(credits: "Winterlude Ice Sculptures, by Ottawa Tourism. https://cdn.ottawatourism.ca/wp-content/uploads/2015/01/1600x500-Ice-sculptures-at-Winterlude-Confederation-Park-winter-0105-credit-Ottawa-Tourism.jpg")

        let credit6 = Credits(credits: "Rideau Canal Skateway, by Saffron Blaze - Own work, Resolution restricted-by-SA, https://commons.wikimedia.org/w/index.php?curid=31239452")

        let credit7 = Credits(credits: "Tulips. May 2006. Licensed under Public Domain via Wikipedia - https://en.wikipedia.org/wiki/File:May_2006.jpg#/media/File:May_2006.jpg")

        let credit8 = Credits(credits: "Canadian Museum of Nature, by RealGrouchy - Own work. Licensed under Public Domain via Commons, https://commons.wikimedia.org/wiki/File:CanadianMuseumofNature2010-05-19.JPG")
        
        let credit9 = Credits(credits: "Curatorial Wing of the Canadian Museum of Civilization, by Daryl Mitchell, uploaded by Skeezix1000. Licensed under CC BY-SA 2.0 via Commons - https://commons.wikimedia.org/wiki/File:Curatorial_Wing_of_the_Canadian_Museum_of_Civilization.jpg")
        
        let credit10 = Credits(credits: "AviationCanada. Licensed under CC BY-SA 3.0 via Commons - https://commons.wikimedia.org/wiki/File:Aviationcanada.jpg")
        
        let credit11 = Credits(credits: "Centre Block - Parliament Hill, by Saffron Blaze - Own work. Licensed under CC BY-SA 3.0 via Commons - https://commons.wikimedia.org/wiki/File:Centre_Block_-_Parliament_Hill.jpg")
        
        let credit12 = Credits(credits: "Chateau Laurier, by StupendousMan2008 - Own work. Licensed under CC BY 3.0 via Commons - https://commons.wikimedia.org/wiki/File:Chateau_Laurier.jpg")
        
        let credit13 = Credits(credits: "Residence of the Prime Minister of Canada, by Alasdair McLellan - Own work. Licensed under CC BY-SA 3.0 via Commons - https://commons.wikimedia.org/wiki/File:Residence_of_the_Prime_Minister_of_Canada.jpg#/media/File:Residence_of_the_Prime_Minister_of_Canada.jpg")
        
        let credit14 = Credits(credits: "Notre Dame Ottawa, Licensed under CC BY-SA 3.0 via Commons - https://commons.wikimedia.org/wiki/File:Notre_Dame_Ottawa_3_db.jpg")
        
        let credit15 = Credits(credits: "Ice Slide, by John Vetterli from Toronto, Canada, uploaded by Skeezix1000, CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=9774413")
        
        let credit16 = Credits(credits: "Ottawa - Rideau Hall, by Concierge.2C - Own work. Licensed under CC BY-SA 3.0 via Commons - https://commons.wikimedia.org/wiki/File:Ottawa_-_Rideau_Hall.JPG")
        
        let credit17 = Credits(credits: "Rideau Canal, by Bobak Ha'Eri. Licensed under CC BY-SA 2.5 via Commons - https://commons.wikimedia.org/wiki/File:Rideau_Canal.jpg")
        
        let credit18 = Credits(credits: "Royal Canadian Mint, by Skeezix1000 - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=11602556")
        
        
        
        credits = [iconCredit, credit1, credit2, credit3, credit4, credit5, credit6, credit7, credit8, credit9, credit10, credit11, credit12, credit13, credit14, credit15, credit16, credit17, credit18]
    }
    
    func loadCreditsData() -> [Credits] {
        return credits
    }

}
