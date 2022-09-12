//
//  UIKitVC.swift
//  MapAppUIKitSwiftUI
//
//  Created by Mishana on 05.09.2022.
//

import UIKit
import MapKit
//import SwiftUI


class UIKitVC: UIViewController {

    let mapView: MKMapView = {
        let map = MKMapView()
        
        return map
    }()
    
    let locationManager = CLLocationManager()
    let regionInMeters: Double = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(mapView)
        mapView.pin(to: view)
        checkLocationServices()
        // Do any additional setup after loading the view.
    }
    
    
}


