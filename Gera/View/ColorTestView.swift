//
//  ColorTestView.swift
//  Gera
//
//  Created by matheusvb on 24/10/22.
//

import Foundation
import SwiftUI

struct ColorTestView: View {
    @State var backgroundColor: Color
    @EnvironmentObject var gameConnectionManager: GameConnectionManager
    
    var body: some View {
        ZStack{
            gameConnectionManager.color.edgesIgnoringSafeArea(.all)
            VStack{
                Button("Change") {
                    if backgroundColor == .red {
                        changeColor(color: .blue)
                        gameConnectionManager.send(colorName: "blue")
                    } else if backgroundColor == .blue {
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
