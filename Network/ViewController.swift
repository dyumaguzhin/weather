//
//  ViewController.swift
//  Network
//
//  Created by Toof on 15.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cityLable: UILabel!
    @IBOutlet weak var feelsLikeTemperatureLable: UILabel!
    @IBOutlet weak var temperatureLable: UILabel!
    
    
    var networkWeatherManager = NetworkWeatherManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        networkWeatherManager.delegate = self
        networkWeatherManager.fetchCurrentWearther(forCity: "Kazan")


        }

    }
    
extension ViewController: NetworkWeatherManagerDelegate {
    func updateInterface(_: NetworkWeatherManager, with currentWeather: CurrentWeather) {
        print(currentWeather.cityName)
    }
    
    
}

