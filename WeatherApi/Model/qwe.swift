//
//  WeatherData.swift
//  WeatherApi
//
//  Created by Dmitrij Meidus on 20.10.22.
//

import Foundation

struct weatherData: Decodable{
    let info: Info
    let fact: Fact
    let forecast: [Forecast]
}

struct Info: Decodable {
    let url: String
}

struct Fact: Decodable{
    let temperature: Int
    let icon: String
    let condition: String
    let windSpeed: Int
    let pressure: Int
    
    enum CodingKeys: String, CodingKey{
        case temperature
        case icon
        case condition
        case windSpeed = "wind_speed"
        case pressure = "pressure_mm"
    }
}

struct Forecast: Decodable{
    let parts: Parts
}

struct Parts: Decodable{
    let day:Day
}

struct Day: Decodable{
    let minTemp: Int?
    let maxTemp: Int?
    
    enum CodingKeys: String,CodingKey{
        case minTemp = "temp_min"
        case maxTemp = "temp_max"
    }
}
