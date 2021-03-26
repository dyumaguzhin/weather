//
//  ViewController.swift
//  Network
//
//  Created by Toof on 15.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var feelsLikeLable: UILabel!
    @IBOutlet weak var tempertureLableName: UILabel!
    
    @IBOutlet weak var cityLable: UILabel!
    @IBOutlet weak var feelsLikeTemperatureLable: UILabel!
    @IBOutlet weak var temperatureLable: UILabel!
    
    
    var networkWeatherManager = NetworkWeatherManager()
    
    @IBAction func searchPressed(_ sender: UIButton){
        self.presentSearchAlertController(withTitle: "Enter city name", message: nil, style: .alert) { [unowned self] city in
            self.networkWeatherManager.fetchCurrentWearther(forCity: city)
                }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        feelsLikeLable.text? = "Ощущается как:  "
        tempertureLableName.text? = "Температура:  "
        
        networkWeatherManager.delegate = self
        networkWeatherManager.fetchCurrentWearther(forCity: "Kazan")
        
    }
    
    func updateInterfaceWith(weather: CurrentWeather) {
     
            self.cityLable.text = weather.cityName
            self.temperatureLable.text = weather.temperatureString
            self.feelsLikeTemperatureLable.text = weather.feelsLikeTempetarureString
        
    }

}
    
extension ViewController: NetworkWeatherManagerDelegate {
    func updateInterface(_: NetworkWeatherManager, with currentWeather: CurrentWeather) {
        DispatchQueue.main.async {
        self.cityLable.text = currentWeather.cityName
        self.temperatureLable.text = currentWeather.temperatureString
        self.feelsLikeTemperatureLable.text = currentWeather.feelsLikeTempetarureString
        }
    }
    
}

