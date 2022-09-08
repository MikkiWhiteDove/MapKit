//
//  ContentModal.swift
//  MapAppUIKitSwiftUI
//
//  Created by Mishana on 06.09.2022.
//

import MapKit

enum MapDetails {
    static let stringLocation = CLLocationCoordinate2D(latitude: 37.331516, longitude: -121.891054)
    static let spanDefault = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
}

final class ContentViewModal: NSObject, ObservableObject, CLLocationManagerDelegate {
    @Published var region = MKCoordinateRegion(center: MapDetails.stringLocation, span: MapDetails.spanDefault)
    
    var locationManager: CLLocationManager?
    
    func checkIfLocationServiceIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager!.delegate = self
        } else {
            print("Error location turn on")
        }
    }
    
    private func checkLocationAutorization() {
        guard let locationManager = locationManager else {return}

        switch locationManager.authorizationStatus {
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            print("Eror location parentral controls")
        case .denied:
            print("Error denied location go to into settings")
        case .authorizedAlways, .authorizedWhenInUse:
            region = MKCoordinateRegion(center: locationManager.location!.coordinate, span: MapDetails.spanDefault)
        @unknown default:
            break
        }
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
         checkLocationAutorization()
    }
    
}
