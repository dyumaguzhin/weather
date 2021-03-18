//
//  ViewController.swift
//  Network
//
//  Created by Toof on 15.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var weatherLable: UILabel!
    
    var networkWeatherManager = NetworkWeatherManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        networkWeatherManager.fetchCurrentWearther(forCity: "London")


    }


}
