//
//  SwiftUIWeatherApp.swift
//  SwiftUIWeather
//
//  Created by Jose Cervantes.
//

import SwiftUI

@main
struct SwiftUIWeatherApp: App {

    var body: some Scene {
        WindowGroup {
            MainPageView()
                .environment(\.managedObjectContext, CoreDataService.shared.viewContext)
        }
    }
}
