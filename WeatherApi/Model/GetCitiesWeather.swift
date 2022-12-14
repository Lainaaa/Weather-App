//
//  GetCitiesWeather.swift
//  WeatherApi
//
//  Created by Dmitrij Meidus on 23.10.22.
//

import Foundation
import CoreLocation

let networkManager = NetworkManager()

func getCityWeather(citiesArray: [String], completionHandler: @escaping (Int, Weather) -> Void ){
    for (index, item) in citiesArray.enumerated(){
        getCoordinateFrom(city: item) { (coordinate, error) in
            guard let coordinate = coordinate, error == nil else {return}
            
            networkManager.getWeather(latitude: coordinate.latitude, longitude: coordinate.longitude) { (weather) in
                completionHandler(index, weather)
            }
        }
    }
}

func getCoordinateFrom(city: String, completion: @escaping(_ coordinate: CLLocationCoordinate2D?,_ error: Error?) -> ()){
    CLGeocoder().geocodeAddressString(city){(placemark, error)in
        completion(placemark?.first?.location?.coordinate, error)
    }
}
