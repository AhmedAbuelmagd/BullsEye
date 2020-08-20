//
//  AppDelegate.swift
//  BullsEye
//
//  Created by Ahmed Abuelmagd on 8/20/20.
//  Copyright © 2020 Ahmed Abuelmagd. All rights reserved.
//

import UIKit
import MOLH

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func localize() {
        MOLH.reset()
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        MOLH.shared.activate(true)
        return true
    }
}
