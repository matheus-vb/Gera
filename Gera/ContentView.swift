//
//  ContentView.swift
//  Gera
//
//  Created by matheusvb on 12/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        StartScreenView()
    }
}

struct StartScreenView: View {
    
    var body: some View {
        NavigationView() {
            VStack {
                NavigationLink(destination: ConnectScreenView(), label: {Text("Start game")})
            }
        }
    }
}

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
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
