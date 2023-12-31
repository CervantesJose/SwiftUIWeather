//
//  City.swift
//  SwiftUIWeather
//
//  Created by Jose Cervantes.
//

import Foundation

struct City: Decodable, Hashable {
    let name: String
    let lat: Double
    let lon: Double
    let localNames: [String: String]?
    
    var localName: String {
        localNames?[Locale.current.languageCode ?? "en"] ?? name
    }
    
    var coordinates: Coordinates {
        Coordinates(lat: lat, lon: lon)
    }
}

extension City {
    
    init(from entity: CityEntity) {
        name = entity.name
        lat = entity.lat
        lon = entity.lon
        localNames = nil
    }
}

extension City: Identifiable {
    
    var id: String {
        return "\(lat) \(lon)"
    }
}
