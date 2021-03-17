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
        let urlString = "https://api.openweathermap.org/data/2.5/weather?q=\(city)&apikey=\(keyApi)"
        guard let url = URL(string: urlString) else {return}
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) {data, response, error in
            if let data = data {
                let dataString = String(data: data, encoding: .utf8)
                print(dataString!)
            }

        }
        task.resume()
    }
    }
