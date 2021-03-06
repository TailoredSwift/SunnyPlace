//
//  TemperatureConverter.swift
//  Sunny Place
//
//  Created by Josh Roberts on 03/08/2017.
//  Copyright © 2017 Josh Roberts. All rights reserved.
//

import Foundation

enum TemperatureScale: String {
    case celsius = "°C"
    case fahrenheit = "°F"
}

struct TemperatureUtil {
    
    static func convert(kelvin: Double, to scale: TemperatureScale) -> Int {
        switch scale {
        case .celsius: return Int(round(kelvin - 273.15))
        case .fahrenheit: return Int(round(kelvin * 9 / 5 - 459.67))
        }
    }
}
