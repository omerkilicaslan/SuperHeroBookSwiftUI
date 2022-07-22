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

let batman = SuperHero(name: "Batman", realName: "Bruce Wayne", imageName: "batman", city: "Gotham", job: "Businessman", coordinate: Coordinates(latitude: 41.8, longitude: -87.7))

let superman = SuperHero(name: "Superman", realName: "Clark Kent", imageName: "superman", city: "Kansas", job: "Journalist", coordinate: Coordinates(latitude: 39.08, longitude: -94.7))

let spiderman = SuperHero(name: "Spiderman", realName: "Peter Parker", imageName: "spiderman", city: "New York", job: "Photographer", coordinate: Coordinates(latitude: 40.7, longitude: -74.06))

let ironman = SuperHero(name: "IronMan", realName: "Tony Stark", imageName: "ironman", city: "Los Angeles", job: "Business Man", coordinate: Coordinates(latitude: 33.8, longitude: -118.2))


let superHeroArray = [batman, superman, spiderman, ironman]
