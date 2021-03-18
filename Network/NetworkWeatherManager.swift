//
//  NetworkWeatherManager.swift
//  Network
//
//  Created by Toof on 15.03.2021.
//

import Foundation
import UIKit

struct NetworkWeatherManager {
    func fetchCurrentWearther(forCity city: String) {
        let urlString = "http://api.openweathermap.org/data/2.5/weather?q=\(city)&apikey=\(keyApi)"
        guard let url = URL(string: urlString) else {return}
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) {data, response, error in
            if let data = data {
                self.parseJSON(withData: data)
            }

        }
        task.resume()
    }
    
    func parseJSON(withData data: Data) {
        let decoder = JSONDecoder()
        do {
            let currentWeatherData = try decoder.decode(CurrentWeatherData.self, from: data)
            currentWeatherData.main.temp
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        
        
    }
    
}
