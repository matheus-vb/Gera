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

struct ColorTestView: View {
    @State var backgroundColor: Color
    @EnvironmentObject var gameConnectionManager: GameConnectionManager
    
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            VStack{
                Button("Change") {
                    if gameConnectionManager.colorStr == "red" {
                        changeColor(color: .blue)
                        gameConnectionManager.send(colorName: "blue")
                    } else if gameConnectionManager.colorStr == "blue" {
                        changeColor(color: .red)
                        gameConnectionManager.send(colorName: "red")
                    }
                }
                .font(.headline)
                .fontWeight(.bold)
                .background(Color(.gray))
                .foregroundColor(.white)
                
            }
        }
    }
    
    func changeColor(color: Color) {
        backgroundColor = color
    }
    
}
extension ColorTestView: GameConnectionManagerDelegate {
    func colorChanged(manager: GameConnectionManager, colorName: String) {
        print(colorName)
        
        OperationQueue.main.addOperation{
            if colorName == "red" {
                self.changeColor(color: .red)
            } else if colorName == "blue" {
                self.changeColor(color: .blue)
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
                NavigationLink(destination: ColorTestView(backgroundColor: .red).environmentObject(gameConnectionManager), isActive: $gameConnectionManager.connectedToGame) {
                    EmptyView()
                }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
