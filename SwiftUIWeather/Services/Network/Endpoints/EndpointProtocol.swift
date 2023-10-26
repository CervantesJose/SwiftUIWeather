//
//  EndpointProtocol.swift
//  SwiftUIWeather
//
//  Created by Jose Cervantes.
//

import Foundation

protocol EndpointProtocol {
    
    var scheme: String { get }
    var host: String { get }
    var path: String { get }
    var params: [String: String] { get }
}

extension EndpointProtocol {
    
    var scheme: String {
        return "https"
    }
}
