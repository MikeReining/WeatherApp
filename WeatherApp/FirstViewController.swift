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
        super.viewDidLoad()
        
        let detailsButton   = UIButton.buttonWithType(UIButtonType.System) as UIButton
        detailsButton.frame = CGRectMake(100, 100, 150, 50)
        detailsButton.backgroundColor = UIColor.clearColor()
        detailsButton.setTitle("Display Details", forState: .Normal)
        detailsButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        detailsButton.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(detailsButton)
        

        // Add 'Add' BarButtonItem
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .Plain, target: self, action: "addCity:")
        
        
    }
    

    
    override func viewDidAppear(animated: Bool) {
        self.title = city.name
        
    }
    
    func showWeatherDetails() {
        let dvc = DetailedViewController(nibName: nil, bundle: nil)
        dvc.city = city
        self.navigationController?.pushViewController(dvc, animated: true)
    }
    
    func buttonAction(sender:UIButton!)
    {
        self.showWeatherDetails()
    }
    
    func addCity(sender: UIBarButtonItem!) {
        println("method called successfully")
    }


}
