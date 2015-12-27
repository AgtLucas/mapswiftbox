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
        
        // Set the map's center coordinate
        mapView.setCenterCoordinate(CLLocationCoordinate2D(latitude: 38.894368, longitude: -77.036487), zoomLevel: 15, animated: false)
        view.addSubview(mapView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

