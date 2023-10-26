//
//  TempData.swift
//  SwiftUIWeather
//
//  Created by Jose Cervantes.
//

import Foundation

struct TempData: Decodable, Hashable {
    let temp: Double
    let tempMax: Double
    let tempMin: Double
}
