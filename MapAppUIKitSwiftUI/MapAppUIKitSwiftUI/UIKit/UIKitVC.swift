//
//  UIKitVC.swift
//  MapAppUIKitSwiftUI
//
//  Created by Mishana on 05.09.2022.
//

import UIKit
import MapKit
import SwiftUI
class UIKitVC: UIViewController {

    let mapView: MKMapView = {
        let map = MKMapView()
        return map
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(mapView)
        mapView.pin(to: view)
        // Do any additional setup after loading the view.
    }
    
//    func addConstraints(to superView: UIView) {
//        translatesAutoresizingMaskIntoConstraints                               = false
//        topAnchor.constraint(equalTo: superView.topAnchor).isActive             = true
//        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive     = true
//        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive   = true
//        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive       = true
//    }
//

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension UIView {
    func pin(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints                               = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive             = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive     = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive   = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive       = true
    }
}
