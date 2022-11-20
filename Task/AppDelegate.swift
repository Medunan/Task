//
//  AppDelegate.swift
//  Bank
//
//  Created by Medunan on 21/10/22.
//

import UIKit

let appColor: UIColor = .systemCyan

@main

class AppDelegate: UIResponder, UIApplicationDelegate {


   
        
        var window: UIWindow?
        
        
        
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            
            window = UIWindow(frame: UIScreen.main.bounds)
            
            window?.makeKeyAndVisible()
            
            window?.backgroundColor = .systemBackground
            
            
            
            let navigationController = UINavigationController(rootViewController: HomeViewController())
            
            window?.rootViewController = navigationController
            
            
            
            return true
            
        }

        
    

}
