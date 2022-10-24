//
//  ConnectScreenView.swift
//  Gera
//
//  Created by matheusvb on 24/10/22.
//

import Foundation
import SwiftUI

struct ConnectScreenView: View {
    @ObservedObject private var gameConnectionManager = GameConnectionManager()
    
    
    
    var body: some View {
        NavigationView() {
            VStack {
                Spacer()
                Button("Host") {
                    gameConnectionManager.hostGame()
                }
                Spacer()
                Button("Join") {
                    gameConnectionManager.joinGame()
                    gameConnectionManager.printDevices()
                }
                Spacer()
                NavigationLink(destination: ColorTestView(backgroundColor: .red).environmentObject(gameConnectionManager), isActive: $gameConnectionManager.connectedToGame) {
                    EmptyView()
                }
            }
        }
    }
}
