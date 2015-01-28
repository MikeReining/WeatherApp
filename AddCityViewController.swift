//
//  AddCityViewController.swift
//  WeatherApp
//
//  Created by Michael Reining on 1/27/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class AddCityViewController: UIViewController, UITextFieldDelegate {
    var city: City?
    var cityNameTextField: UITextField!
    var temperatureTextField: UITextField!
    var iconTextField: UITextField!
    
    
    override func viewWillAppear(animated: Bool) {
        
        title = "Add New City"
        self.view.backgroundColor = UIColor.purpleColor()

        // Add City Name Text Field
        cityNameTextField = UITextField(frame: CGRectMake(20.0, 30.0, 300, 33.0))
        cityNameTextField.center = CGPointMake(170, 150)
        cityNameTextField.backgroundColor = UIColor.whiteColor()
        cityNameTextField.placeholder = " Add city name"
        cityNameTextField.returnKeyType = .Next
        self.view.addSubview(cityNameTextField)
        cityNameTextField.delegate = self
        
        // Add Temperature Text Field
        temperatureTextField = UITextField(frame: CGRectMake(20.0, 30.0, 300, 33.0))
        temperatureTextField.center = CGPointMake(170, 185)
        temperatureTextField.backgroundColor = UIColor.whiteColor()
        temperatureTextField.placeholder = " Add temperature (e.g. '5')"
        temperatureTextField.returnKeyType = .Next
        self.view.addSubview(temperatureTextField)
        temperatureTextField.delegate = self
        
        // Add Weather Icon Text Field
        iconTextField = UITextField(frame: CGRectMake(20.0, 30.0, 300, 33.0))
        iconTextField.center = CGPointMake(170, 220)
        iconTextField.backgroundColor = UIColor.whiteColor()
        iconTextField.placeholder = " Add icon name (e.g. 'snow')"
        iconTextField.returnKeyType = .Done
        self.view.addSubview(iconTextField)
        iconTextField.delegate = self
        
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {   //delegate method
        if textField == cityNameTextField {
            cityNameTextField.resignFirstResponder()
            temperatureTextField.becomeFirstResponder()
            return true
        }
        
        if textField == temperatureTextField {
            temperatureTextField.resignFirstResponder()
            iconTextField.becomeFirstResponder()
        }
        
        if textField == iconTextField {
            iconTextField.resignFirstResponder()
            addCity(textField)
        }
        
        
        return false
    }
    
    
    func addCity(sender:UITextField!)
    {
        println("addCity Function called")
    }
    
}
