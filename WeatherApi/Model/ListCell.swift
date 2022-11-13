//
//  ListCell.swift
//  WeatherApi
//
//  Created by Dmitrij Meidus on 25.10.22.
//

import UIKit

class ListCell: UITableViewCell {
    
    @IBOutlet var nameCityLabel: UILabel!
    @IBOutlet var conditionCityLabel: UILabel!
    @IBOutlet var tempCityLabel: UILabel!
    
    func configure(weather: Weather){
        self.nameCityLabel.text = weather.name
        self.conditionCityLabel.text = weather.conditionString
        self.tempCityLabel.text = weather.temperatureString + "°C"
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
