//
//  FlightView.swift
//  Flighty
//
//  Created by Spencer Dearman on 2/14/26.
//

import SwiftUI
import MapKit

struct FlightView: View {
    @State private var position: MapCameraPosition = .camera(
        MapCamera(
            centerCoordinate: CLLocationCoordinate2D(latitude: 39.8283, longitude: -98.5795),
            distance: 8_000_000,
            heading: 0,
            pitch: 50
        )
    )
    
    @State private var showSheet: Bool = true
    
    var body: some View {
        ZStack {
            
            Map(position: $position) {
                MapPolyline(coordinates: [
                    CLLocationCoordinate2D(latitude: 41.8781, longitude: -87.6298),
                    CLLocationCoordinate2D(latitude: 39.8561, longitude: -104.6737)
                ])
                .stroke(.blue, lineWidth: 2)
                
                Annotation("ORD", coordinate: CLLocationCoordinate2D(latitude: 41.8781, longitude: -87.6298)) {
                    Circle().fill(.blue).frame(width: 8, height: 8)
                }
            }
            .mapStyle(.hybrid(elevation: .realistic))
            .task { showSheet = true }
        }
        .sheet(isPresented: $showSheet) {
            FlightDetailsView()
                .presentationBackgroundInteraction(.enabled(upThrough: .medium))
                .presentationDetents([.height(280), .medium, .large])
                .interactiveDismissDisabled()
                .presentationBackground(.regularMaterial)
        }
    }
}

#Preview {
    FlightView()
}
