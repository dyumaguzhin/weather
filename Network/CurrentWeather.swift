//
//  CurrentWeather.swift
//  Network
//
//  Created by Toof on 21.03.2021.
//

import Foundation

struct CurrentWeather {
    let cityName: String
    let temperature: Double
    var temperatureString: String {
        return "\(temperature)"
    }
    let feelsLikeTemperature: Double
    var feelsLikeTempetarureString: String {
        return "\(feelsLikeTemperature)"
    }
    
    init?(currentWeatherData: CurrentWeatherData) {
        cityName = currentWeatherData.name
        temperature = currentWeatherData.main.temp
        feelsLikeTemperature = currentWeatherData.main.feels_like
    }
}
