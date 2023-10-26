//
//  ForecastResponse.swift
//  SwiftUIWeather
//
//  Created by Jose Cervantes.
//

import Foundation

struct ForecastResponse: Decodable {
    let list: [Forecast]
}

struct Forecast: Decodable, Hashable {
    let dt: Date
    let main: TempData
    let weather: [WeatherDescription]
}
