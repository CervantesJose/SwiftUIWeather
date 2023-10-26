//
//  WeatherDescription.swift
//  SwiftUIWeather
//
//  Created by Jose Cervantes.
//

import Foundation

struct WeatherDescription: Decodable, Hashable {
    let main: WeatherStatus
    let description: String
}
