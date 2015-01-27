//
//  DetailedViewController.swift
//  WeatherApp
//
//  Created by Michael Reining on 1/27/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {
    
    var city:City!
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor.grayColor()
        view.alpha = 0.8
        title = "Weather Details"
        
        // Display weather icon programmatically
        let imageName = city.icon
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 25, y: 100, width: 30, height: 30)
        view.addSubview(imageView)
        
        // Display city label programmatically
        let cityNameLabel = UILabel(frame: CGRectMake(0, 0, 300, 30))
        cityNameLabel.center = CGPointMake(170, 160)
        cityNameLabel.text = city.name
        cityNameLabel.textAlignment = .Left
        let cityFont = UIFont(name: "HelveticaNeue", size: 36)
        cityNameLabel.font = cityFont
        view.addSubview(cityNameLabel)

        // Display temperature programmatically
        let temperatureLabel = UILabel(frame: CGRectMake(0, 0, 200, 30))
        temperatureLabel.center = CGPointMake(120, 200)
        temperatureLabel.text = "Temperature \(city.temperature)"
        temperatureLabel.textAlignment = .Left
        let temperatureFont = UIFont(name: "HelveticaNeue", size: 18)
        temperatureLabel.font = temperatureFont
        view.addSubview(temperatureLabel)
        

        
    }
    
    
}
