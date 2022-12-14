//
//  WeatherData.swift
//  WeatherApi
//
//  Created by Dmitrij Meidus on 20.10.22.
//

import Foundation

struct WeatherData: Decodable{
    let info: Info
    let fact: Fact
    let forecasts: [Forecast]
}

struct Info: Decodable {
    let url: String
}

struct Fact: Decodable{
    let temp: Double
    let icon: String
    let condition: String
    let windSpeed: Double
    let pressureMm: Int
    
    enum CodingKeys: String, CodingKey{
        case temp
        case icon
        case condition
        case windSpeed = "wind_speed"
        case pressureMm = "pressure_mm"
    }
}

struct Forecast: Decodable{
    let parts: Parts
}

struct Parts: Decodable{
    let day: Hour
}

struct Hour: Decodable{
    let temp_min: Int?
    let temp_max: Int?
    
    enum CodingKeys: String,CodingKey{
        case temp_min = "temp_min"
        case temp_max = "temp_max"
    }
}
