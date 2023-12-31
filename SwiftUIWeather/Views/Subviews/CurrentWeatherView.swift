//
//  CurrentWeatherView.swift
//  SwiftUIWeather
//
//  Created by Jose Cervantes.
//

import SwiftUI

struct CurrentWeatherView: View {
    let weather: CurrentWeather?
    let name: String
    
    var body: some View {
        HStack {
            Spacer()
            VStack(alignment: .center, spacing: 4) {
                Text(name)
                    .font(.title)
                Text(weather?.main.temp.toTempString ?? "--")
                    .font(.system(size: 60))
                Image(systemName: weather?.weather.first?.main.imageName ?? "")
                    .font(.system(size: 42))
                Text(weather?.weather.first?.description ?? "")
            }
            Spacer()
        }
        .padding()
    }
}

struct CurrentWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeatherView(
            weather: CurrentWeather(
                name: "Yekaterinburg",
                coord: .init(
                    lat: 123,
                    lon: 123
                ),
                main: .init(
                    temp: 24.5,
                    tempMax: 26,
                    tempMin: 22
                ),
                weather: [
                    .init(
                        main: .clouds,
                        description: "clouds"
                    )
                ]
            ),
            name: "Yekaterinburg"
        )
    }
}
