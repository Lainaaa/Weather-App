//
//  DetailViewController.swift
//  WeatherApi
//
//  Created by Dmitrij Meidus on 26.10.22.
//

import UIKit
import SwiftSVG

class DetailViewController: UIViewController {

    @IBOutlet var nameCityLabel: UILabel!
    @IBOutlet var viewCity: UIView!
    @IBOutlet var conditionLabel: UILabel!
    @IBOutlet var tempCity: UILabel!
    
    @IBOutlet var pressureLabel: UILabel!
    @IBOutlet var windSpeedLabel: UILabel!
    @IBOutlet var minTempLabel: UILabel!
    @IBOutlet var maxTempLabel: UILabel!

    var weatherModel: Weather?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshLabels()
        // Do any additional setup after loading the view.
    }
    
    func refreshLabels(){
        nameCityLabel.text = weatherModel?.name
        let urlImage = URL(string: "https://yastatic.net/weather/i/icons/funky/dark/\(weatherModel!.conditionCode).svg")
        let weatherImage = UIView(SVGURL: urlImage!){(image) in
            image.resizeToFit(self.viewCity.bounds)
        }
        self.viewCity.addSubview(weatherImage)
        conditionLabel.text = weatherModel?.conditionString
        tempCity.text = ("\((weatherModel?.temperatureString)!)°C")
        pressureLabel.text = "\((weatherModel?.pressureMm)!)мм"
        windSpeedLabel.text = "\((weatherModel?.windSpeed)!)м/с"
        maxTempLabel.text = "\((weatherModel?.temp_max)!)°C"
        minTempLabel.text = "\((weatherModel?.temp_min)!)°C"
    }

}
