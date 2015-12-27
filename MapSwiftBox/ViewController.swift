//
//  ViewController.swift
//  MapSwiftBox
//
//  Created by Lucas da Silva on 12/27/15.
//  Copyright © 2015 Lucas. All rights reserved.
//

import UIKit
import Mapbox

class ViewController: UIViewController {
    
    var mapView: MGLMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize the Map View
        mapView = MGLMapView(frame: view.bounds)
        mapView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        
        // Set the map's center coordinate -26.4537736,-49.1179425
        mapView.setCenterCoordinate(CLLocationCoordinate2D(latitude: -26.4537736, longitude: -49.1179425), zoomLevel: 15, animated: false)
        view.addSubview(mapView)
        
        // Declare the annotation `point` and set its coordinates, title, and subtitle
        let point
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

