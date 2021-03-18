//
//  CurrentWeatherData.swift
//  Network
//
//  Created by Toof on 18.03.2021.
//

import Foundation

struct CurrentWeatherData: Decodable {
    let name: String
    let main: Main
    
    
}
struct Main: Decodable {
    let temp: Double
    let feels_like: Double
    
    }

        

