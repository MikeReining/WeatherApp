//
//  AddCityViewController.swift
//  WeatherApp
//
//  Created by Michael Reining on 1/27/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class AddCityViewController: UIViewController {
    var city: City?
    
    override func viewDidAppear(animated: Bool) {
        title = "Add New City"
        self.view.backgroundColor = UIColor.purpleColor()

    }
    
}
