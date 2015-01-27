//
//  ThirdViewController.swift
//  WeatherApp
//
//  Created by Michael Reining on 1/27/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    var city: City!

    override func viewDidLoad() {
        
    }
    
    override func viewDidAppear(animated: Bool) {
        self.title = city.name
        self.showWeatherDetails()
        
    }
    
    func showWeatherDetails() {
        let dvc = DetailedViewController(nibName: nil, bundle: nil)
        dvc.city = city
        self.navigationController?.pushViewController(dvc, animated: true)
    }
    
    
}
