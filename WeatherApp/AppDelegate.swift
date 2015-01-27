//
//  AppDelegate.swift
//  WeatherApp
//
//  Created by Michael Reining on 1/27/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Initialize city objects
        var vancouver = City(name: "Vancouver", temperature: "5")
        var munich = City(name: "Munich", temperature: "12")
        var sanFrancisco = City(name: "San Francisco", temperature: "10")
        var kualaLumpur = City(name: "Kuala Lumpur", temperature: "32")
        var chicago = City(name: "Chicago", temperature: "-3")
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        // Setup view controllers programmatically and configure title and icon for TabBar
        
        // Tab Bar at Index 0
        var nav1 = UINavigationController()
        nav1.tabBarItem.title = "Vancouver"
        var tabBarImage = UIImage(named: "fog")
        nav1.tabBarItem.image = tabBarImage
        var firstVC = FirstViewController(nibName: nil, bundle: nil)
        firstVC.view.backgroundColor = UIColor.redColor()
        firstVC.city = vancouver
        nav1.viewControllers = [firstVC]
        
        var nav2 = UINavigationController()
        nav2.tabBarItem.title = "Munich"
        tabBarImage = UIImage(named: "snow")
        nav2.tabBarItem.image = tabBarImage
        var secondVC = SecondViewController(nibName: nil, bundle: nil)
        secondVC.city = munich
        nav2.viewControllers = [secondVC]
        
        var nav3 = UINavigationController()
        nav3.tabBarItem.title = "San Francisco"
        tabBarImage = UIImage(named: "clear-day")
        nav3.tabBarItem.image = tabBarImage
        var thirdVC = ThirdViewController(nibName: nil, bundle: nil)
        thirdVC.view.backgroundColor = UIColor.greenColor()
        thirdVC.city = sanFrancisco
        nav3.viewControllers = [thirdVC]
        
        var nav4 = UINavigationController()
        nav4.tabBarItem.title = "Kuala Lumpur"
        tabBarImage = UIImage(named: "clear-night")
        nav4.tabBarItem.image = tabBarImage
        var fourthVC = FourthViewController(nibName: nil, bundle: nil)
        fourthVC.city = kualaLumpur
        
        var tabs = UITabBarController()
        tabs.viewControllers = [nav1,nav2,nav3,nav4]
        
        self.window!.rootViewController = tabs;
        self.window?.makeKeyAndVisible();
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

