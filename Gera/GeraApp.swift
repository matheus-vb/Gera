//
//  GeraApp.swift
//  Gera
//
//  Created by matheusvb on 12/10/22.
//

import SwiftUI

@main
struct GeraApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            StartScreenView()
        }
    }
}
