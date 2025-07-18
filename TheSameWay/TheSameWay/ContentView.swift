//
//  ContentView.swift
//  TheSameWay
//
//  Created by Siraphop Chaisirikul on 17/7/2568 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GoogleMapView()
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}


import GoogleMaps

struct GoogleMapView: UIViewRepresentable {
    func makeUIView(context: Context) -> GMSMapView {
        let camera = GMSCameraPosition(latitude: 13.7563, longitude: 100.5018, zoom: 14.0)
        let options = GMSMapViewOptions()
        options.camera = camera

        let mapView = GMSMapView(options: options)

        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 13.7563, longitude: 100.5018)
        marker.title = "กรุงเทพฯ"
        marker.snippet = "ประเทศไทย"
        marker.map = mapView

        return mapView
    }

    func updateUIView(_ uiView: GMSMapView, context: Context) {
        // อัปเดตแผนที่ถ้าต้องการในอนาคต
    }
}

