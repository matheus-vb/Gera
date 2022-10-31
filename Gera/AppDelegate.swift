//
//  AppDelegate.swift
//  Gera
//
//  Created by ditthales on 31/10/22.
//

import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            // Override point for customization after application launch.
            UNUserNotificationCenter.current().delegate = self // add this
            return true
        }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void)
    {
        completionHandler([.alert, .badge, .sound])
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        print("testedelegate")
    }
}
