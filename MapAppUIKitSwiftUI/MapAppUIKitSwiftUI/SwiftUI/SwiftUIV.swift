//
//  SwiftUIV.swift
//  MapAppUIKitSwiftUI
//
//  Created by Mishana on 05.09.2022.
//

import SwiftUI
import MapKit

struct SwiftUIV: View {
    
    @StateObject private var viewModal = ContentViewModal()
    
    var body: some View {
        Map(coordinateRegion: $viewModal.region, showsUserLocation: true)
            .ignoresSafeArea()
            .accentColor(Color(.systemPink))
            .onAppear{
                viewModal.checkIfLocationServiceIsEnabled()
            }
    }
}

struct SwiftUIV_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIV()
    }
}
