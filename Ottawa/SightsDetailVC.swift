//
//  SightsDetailVC.swift
//  Ottawa
//
//  Created by Minni K Ang on 2016-04-02.
//  Copyright © 2016 Minni K Ang. All rights reserved.
//

import UIKit
import MapKit

class SightsDetailVC: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var sightDetailLabel: UILabel!
    
    @IBOutlet weak var sightPhoto: UIImageView!
    
    @IBOutlet weak var map: MKMapView!
    
    @IBOutlet weak var website: UIWebView!
    
    
    let locationManager = CLLocationManager()
    
    var sight: Sight!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sightDetailLabel.text = sight.name
        sightPhoto.image = sight.photo

        map.delegate = self
        let address = sight.location
        getPlacemarkFromAddress(address)
        
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let mapRegion = MKCoordinateRegionMake(location.coordinate, span)

        map.setRegion(mapRegion, animated: true)
    }
    
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        let annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "Default")
        annotationView.animatesDrop = true
        return annotationView
    }
    
    func createAnnotationForLocation(location: CLLocation) {
        let sightLocation = MapAnnotations(coordinate: location.coordinate)
        centerMapOnLocation(location)
        map.addAnnotation(sightLocation)
    }

    func getPlacemarkFromAddress(address: String) {
        CLGeocoder().geocodeAddressString(address) { (placemarks: [CLPlacemark]?, error: NSError?) -> Void in
            if let marks = placemarks where marks.count > 0 {
                if let sightLocation = marks[0].location {
                    self.createAnnotationForLocation(sightLocation)
                }
            }
        }
    }
    
    @IBAction func backButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
}
