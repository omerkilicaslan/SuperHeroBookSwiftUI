//
//  MapView.swift
//  SuperHeroBookSwiftUI
//
//  Created by Ömer Faruk Kılıçaslan on 22.07.2022.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    var coordinate: CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        
        MKMapView(frame: .zero)
    }
    
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: superHeroArray[0].coordinateLocation)
    }
}
