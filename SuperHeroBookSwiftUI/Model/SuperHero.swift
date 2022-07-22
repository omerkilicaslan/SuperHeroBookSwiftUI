//
//  SuperHero.swift
//  SuperHeroBookSwiftUI
//
//  Created by Ömer Faruk Kılıçaslan on 22.07.2022.
//

import SwiftUI
import CoreLocation

struct SuperHero: Identifiable {
    
    var id = UUID()
    var name: String
    var realName: String
    var imageName: String
    var city: String
    var job: String
    var coordinate: Coordinates
    
    var coordinateLocation: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
    }
    
    
}

struct Coordinates {
    var latitude: Double
    var longitude : Double
}

let batman = SuperHero(name: "Batman", realName: "Bruce Wayne", imageName: "batman", city: "Gotham", job: "Businessman", coordinate: Coordinates(latitude: 20.0, longitude: 20.0))
