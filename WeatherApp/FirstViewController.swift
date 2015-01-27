//
//  FirstViewController.swift
//  WeatherApp
//
//  Created by Michael Reining on 1/27/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    var city: City!
    
    
    override func viewDidLoad() {
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        let delayTime = dispatch_time(DISPATCH_TIME_NOW,
            Int64(3 * Double(NSEC_PER_SEC)))
        dispatch_after(delayTime, dispatch_get_main_queue()) {
            self.showWeatherDetails()
        }
        
    }
    
    func showWeatherDetails() {
        let dvc = DetailedViewController(nibName: nil, bundle: nil)
        dvc.city = city
        self.navigationController?.pushViewController(dvc, animated: true)
    }
    
    
}
