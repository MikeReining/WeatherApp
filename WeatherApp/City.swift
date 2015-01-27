//
//  City.swift
//  WeatherApp
//
//  Created by Michael Reining on 1/27/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import Foundation
import UIKit

class City {
    var name: String
    var temperature: String
    var icon: String
    
    init(name: String, temperature: String, icon: String) {
        self.name = name
        self.temperature = temperature
        self.icon = icon
    }
}