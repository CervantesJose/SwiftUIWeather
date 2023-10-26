//
//  Double+ConvertToString.swift
//  SwiftUIWeather
//
//  Created by Jose Cervantes.
//

import Foundation

extension Double {
    
    var toTempString: String {
        return String(format: "%.1f", self) + "°F"
    }
}
