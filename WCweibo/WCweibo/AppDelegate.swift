//
//  AppDelegate.swift
//  WCweibo
//
//  Created by 万晨 on 15/10/8.
//  Copyright © 2015年 heima. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.backgroundColor = UIColor.whiteColor()
        window?.rootViewController = MainTabBarController()
        window?.makeKeyAndVisible()
        return true
    }

    
}

