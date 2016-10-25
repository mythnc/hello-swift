//
//  ViewController.swift
//  Maps
//
//  Created by N.C on 2016/10/25.
//  Copyright © 2016年 N.C. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let latitude: CLLocationDegrees = 24.79
        let longitude: CLLocationDegrees = 120.99
        let LatDelta: CLLocationDegrees = 0.05
        let lonDelta: CLLocationDegrees = 0.05
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: LatDelta, longitudeDelta: lonDelta)
        let nthuLocation: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let region: MKCoordinateRegion = MKCoordinateRegion(center: nthuLocation, span: span)
        
        map.setRegion(region, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

