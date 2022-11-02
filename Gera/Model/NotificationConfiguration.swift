//
//  NotificationsConfiguration.swift
//  Gera
//
//  Created by ditthales on 31/10/22.
//

import Foundation
import UserNotifications
import SwiftUI

struct NotificationConfiguration{
    let title: String
    let body: String
}


extension NotificationConfiguration{
    
    static func notificationContent() -> [NotificationConfiguration]{
        return[
            NotificationConfiguration(
                title: "Olinda foi atingida!",
                body: "Cientistas não obtêm sucesso e a bactéria se espalha para cidades vizinhas"
            ),
            
        ]
    }
    
    static func askForPermission(){
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: { success, error in
            if success{
                print("All set")
            } else if let error = error{
                print(error.localizedDescription)
            }
        })
    }
    
    static func sendNotification(withConfiguration: NotificationConfiguration){
        
        let content = UNMutableNotificationContent()
        content.title = withConfiguration.title
        content.subtitle = withConfiguration.body
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 0.1, repeats: false)
        
        let request = UNNotificationRequest(identifier: "alert", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request)
    }
    
    static func vibrate(type: UINotificationFeedbackGenerator.FeedbackType){
            //faz a vibração
            let generator = UINotificationFeedbackGenerator()
            generator.notificationOccurred(type)
        }
    
}
