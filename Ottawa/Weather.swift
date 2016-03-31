//
//  Weather.swift
//  Ottawa
//
//  Created by Minni K Ang on 2016-02-23.
//  Copyright © 2016 Minni K Ang. All rights reserved.
//

import Foundation
import UIKit

class Weather {
    
    private var _apiKey = "6ce258e8689137132fcce079ac013e71"
    
    var apiKey: String {
        get {
        return _apiKey
        }
    }
    
    init() {
    }
    
    var temperature = "Offline"
    var iconURL = ""
    var iconImage = UIImage()
    
    func getWeatherData() -> (temperature: String, iconURL: String) {
        
        if Reachability.isConnectedToNetwork() == true {
        
        let key = apiKey
        
        let weatherURL = "http://api.openweathermap.org/data/2.5/weather?id=6094817" + "&units=metric" + "&APPID=\(key)"

        let json = JSON(url: weatherURL)

        let temp = json["main"]["temp"].asDouble!
        temperature = String(temp) + "°C"
                
        let weather = json["weather"]
                
        let icon = weather[0]["icon"].asString!
        iconURL = "http://api.openweathermap.org/img/w/\(icon).png"
            
        }
        
        return (temperature, iconURL)
    }
}