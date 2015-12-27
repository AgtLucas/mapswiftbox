//
//  ViewController.swift
//  MapSwiftBox
//
//  Created by Lucas da Silva on 12/27/15.
//  Copyright © 2015 Lucas. All rights reserved.
//

import UIKit
import Mapbox

class ViewController: UIViewController, MGLMapViewDelegate {
    
    var mapView: MGLMapView!
    
    let lat: CLLocationDegrees = -26.4537736
    let lon: CLLocationDegrees = -49.1179425

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize the Map View
        mapView = MGLMapView(frame: view.bounds, styleURL: MGLStyle.darkStyleURL())
        mapView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        
        // Set the map's center coordinate -26.4537736,-49.1179425
        mapView.setCenterCoordinate(CLLocationCoordinate2D(latitude: lat, longitude: lon), zoomLevel: 15, animated: false)
        view.addSubview(mapView)
        
        // Set the delegate property of our map view to self after instantiating it.
        mapView.delegate = self
        
        // Declare the annotation `point` and set its coordinates, title, and subtitle
        let point = MGLPointAnnotation()
        point.coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        point.title = "Hello, Mapbox!"
        point.subtitle = "Welcome to nowhere!"
        
        // Add annotation `point` to the map
        mapView.addAnnotation(point)
    }
    
    func mapView(mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

