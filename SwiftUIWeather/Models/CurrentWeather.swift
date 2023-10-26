//
//  CurrentWeather.swift
//  SwiftUIWeather
//
//  Created by Jose Cervantes.
//

import Foundation

struct CurrentWeather: Decodable {
    let name: String
    let coord: Coordinates
    let main: TempData
    let weather: [WeatherDescription]
}
