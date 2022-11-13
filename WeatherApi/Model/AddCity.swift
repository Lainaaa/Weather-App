//
//  AddCity.swift
//  WeatherApi
//
//  Created by Dmitrij Meidus on 28.10.22.
//

import UIKit

extension UIViewController{
    func alertAddCity(name: String,placeholder: String, completionHandler: @escaping (String) -> Void){
        
        let alertController = UIAlertController(title: name, message: nil, preferredStyle: .alert)
        let alertOk = UIAlertAction(title: "OK", style: .default) {(action) in
            
            let tftext = alertController.textFields?.first
            guard let text = tftext?.text else { return }
            completionHandler(text)
        }
        
        alertController.addTextField{ (tf) in
            tf.placeholder = placeholder
        }
        
        let alertCancel = UIAlertAction(title: "Отмена", style: .default)
        
        alertController.addAction(alertOk)
        alertController.addAction(alertCancel)
        
        present(alertController, animated: true, completion: nil)
    }
    
}
