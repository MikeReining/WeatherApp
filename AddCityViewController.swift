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
        city = City(name: "", temperature: "", icon: "")
        
        
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
            if cityNameTextField.text == "" {
                let alert = UIAlertController(title: "Please Add City Name", message: "The name of the city cannot be blank!", preferredStyle: .Alert)
                let action = UIAlertAction(title: "Ops.", style: .Default, handler: nil)
                alert.addAction(action)
                presentViewController(alert, animated: true, completion: nil)
            }
            city!.name = cityNameTextField.text
            cityNameTextField.resignFirstResponder()
            temperatureTextField.becomeFirstResponder()
            return true
        }
        
        if textField == temperatureTextField {
            
            let letters = NSCharacterSet.letterCharacterSet()
            let digits = NSCharacterSet.decimalDigitCharacterSet()
            
            var letterCount = 0
            var digitCount = 0
            
            for uni in temperatureTextField.text.unicodeScalars {
                if letters.longCharacterIsMember(uni.value) {
                    letterCount++
                } else if digits.longCharacterIsMember(uni.value) {
                    digitCount++
                }
            }
            
            if digitCount == 0 && letterCount > 1 {
                let alert = UIAlertController(title: "Invalid Input", message: "Please add a valid temperature as an integer value", preferredStyle: .Alert)
                let action = UIAlertAction(title: "Ok fine.", style: .Default, handler: nil)
                alert.addAction(action)
                presentViewController(alert, animated: true, completion: nil)
            }
            city!.temperature = temperatureTextField.text
            temperatureTextField.resignFirstResponder()
            iconTextField.becomeFirstResponder()
        }
        
        if textField == iconTextField {
            city!.icon = iconTextField.text.lowercaseString
            iconTextField.resignFirstResponder()
            addCity(textField)
        }
        
        
        return false
    }
    
    
    func addCity(sender:UITextField!) {
        let alert = UIAlertController(title: "New City Details", message: "City name: \(city!.name), Temperature: \(city!.temperature), Icon name: \(city!.icon).  Rest of Add function not implemented since sleep is important too!", preferredStyle: .Alert)
        let action = UIAlertAction(title: "Ok, got it!", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }
    
}
