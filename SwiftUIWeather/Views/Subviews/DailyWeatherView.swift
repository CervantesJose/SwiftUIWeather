//
//  DailyWeatherView.swift
//  SwiftUIWeather
//
//  Created by Jose Cervantes.
//

import SwiftUI

struct DailyWeatherView: View {
    let daily: DailyForecast
    
    var body: some View {
        HStack {
            Text(daily.day.capitalized)
            Spacer()
            HStack(spacing: 8) {
                Text(daily.minTemp.toTempString)
                    .multilineTextAlignment(.trailing)
                    .frame(width: 60.0)
                Text("—")
                Text(daily.maxTemp.toTempString)
                    .multilineTextAlignment(.leading)
                    .frame(width: 60.0)
            }
        }
    }
}

struct DailyWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        DailyWeatherView(daily: .init(
            maxTemp: 26.5,
            minTemp: 22,
            day: "Monday"
        ))
    }
}
