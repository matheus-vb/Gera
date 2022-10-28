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
    
    @State var isHost = false
    
    var body: some View {
        NavigationView() {
            VStack {
                Spacer()
                Button("Host") {
                    self.isHost = true
                    gameConnectionManager.hostGame()
                }
                Spacer()
                Button("Join") {
                    gameConnectionManager.joinGame()
                    gameConnectionManager.printDevices()
                }
                Spacer()
                NavigationLink(destination: GameScreenView(player: isHost ? 1 : 2).environmentObject(gameConnectionManager), isActive: $gameConnectionManager.connectedToGame) {
                    EmptyView()
                }
//                NavigationLink(destination: ColorTestView(backgroundColor: .red).environmentObject(gameConnectionManager), isActive: $gameConnectionManager.connectedToGame) {
//                    EmptyView()
//                }
            }
        }
    }
}
