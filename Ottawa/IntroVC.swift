//
//  IntroVC.swift
//  Ottawa
//
//  Created by Minni K Ang on 2016-02-23.
//  Copyright © 2016 Minni K Ang. All rights reserved.
//

import UIKit
import Foundation

class IntroVC: UIViewController {
    
    
    @IBOutlet weak var clockDisplay: UILabel!
    @IBOutlet weak var temperatureDisplay: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var introText: UITextView!

    @IBOutlet weak var returnButton: UIButton!
    
    let clock = Clock()
    let weather = Weather()

    var timer: NSTimer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "updateClock", userInfo: nil, repeats: true)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        dispatch_async(dispatch_get_main_queue(), {self.introText.scrollRangeToVisible(NSMakeRange(0, 0))} )
        
        updateClock()
        displayTemperature()
    }

    func updateClock() {
        let timeZone = NSTimeZone(name: "EST")
        let formatter = NSDateFormatter()
        formatter.timeZone = timeZone
        formatter.timeStyle = .MediumStyle
        clockDisplay.text = formatter.stringFromDate(clock.currentTime)
    }
    
    func displayTemperature() {
        
        let weatherData = weather.getWeatherData()
        
        temperatureDisplay.text = weatherData.temperature

        if let validURL = NSURL(string: weatherData.iconURL) {
            weatherImage.contentMode = .ScaleAspectFit
            downloadImage(validURL)
        }
    }
    
    func getDataFromUrl(url:NSURL, completion: ((data: NSData?, response: NSURLResponse?, error: NSError? ) -> Void)) {
        NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) in
            completion(data: data, response: response, error: error)
            }.resume()
    }
    
    func downloadImage(url: NSURL){
        getDataFromUrl(url) { (data, response, error)  in
            dispatch_async(dispatch_get_main_queue()) { () -> Void in
                guard let data = data where error == nil else { return }
                self.weatherImage.image = UIImage(data: data)
            }
        }
    }

}
