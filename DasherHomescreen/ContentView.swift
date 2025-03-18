//
//  ContentView.swift
//  DasherHomescreen
//
//  Created by Akhil Dakinedi on 3/17/25.
//

import SwiftUI
import MapboxMaps

//  Initialize the styled map and center on Chicago
struct ContentView: View {
    var body: some View {
        Map(initialViewport: .camera(
            center: CLLocationCoordinate2D(latitude: 41.868370, longitude: -87.628240),
            zoom: 11.84
        ))
          .mapStyle(MapStyle(uri: StyleURI(rawValue: "mapbox://styles/doordash/cm2u183cp000e01ola9h5cw28")!))
          .ornamentOptions(OrnamentOptions(
              scaleBar: .init(visibility: .hidden),
              compass: .init(visibility: .hidden),
              logo: .init(margins: .init(x: -10000, y: 0)),
              attributionButton: .init(margins: .init(x: -10000, y: 0))
          ))
          .ignoresSafeArea()
        
    }
}

#Preview {
    ContentView()
}
