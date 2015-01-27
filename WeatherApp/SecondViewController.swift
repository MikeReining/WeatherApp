//
//  SecondViewController.swift
//  WeatherApp
//
//  Created by Michael Reining on 1/27/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var city: City!

    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.yellowColor()
        navigationController?.title = city.name
    }
    
    override func viewDidAppear(animated: Bool) {
        title = city.name
        showWeatherDetails()
        
    }
    
    func showWeatherDetails() {
        let dvc = DetailedViewController(nibName: nil, bundle: nil)
        dvc.city = city
        self.navigationController?.pushViewController(dvc, animated: true)
    }
    
}
