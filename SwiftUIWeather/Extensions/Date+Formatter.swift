//
//  Date+Formatter.swift
//  SwiftUIWeather
//
//  Created by Jose Cervantes.
//

import Foundation

extension Date {
    
    var hour: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH"
        return dateFormatter.string(from: self)
    }
    
    var day: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "eeee"
        dateFormatter.locale = Locale.current
        return dateFormatter.string(from: self)
    }
}
