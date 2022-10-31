//
//  PopupGameOver.swift
//  Gera
//
//  Created by acrn on 27/10/22.
//

import SwiftUI

struct GameOver : View {
    var time: String = "01:01"
    
    var body: some View {
        
        NavigationView(){
            
            ZStack {
                Image("Partida6")
                Rectangle()
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.5)
                
                Image("gameOver")
                    .offset(y:-50)
                
                Text("A bactéria derrotou vocês em:")
                    .multilineTextAlignment(.center)
                    .offset(y:-70)
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .frame(width: 210)
                
                Text(time)
                    .offset(y: 5)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                NavigationLink (destination: StartScreenView(), label: {
                    Image("buttonExit")
                })
                .offset(x: -80, y: 100)
                
                Button(action: {
                    // colocar uma navigation link
                }) {
                    Image("buttonHome")
                    
                }.offset(x: 80, y: 100)
                
            }
//            relogio
//            feedback qnd um jogar
            
        }
    }
}

struct GameOver_Previews: PreviewProvider {
    static var previews: some View {
        GameOver()
    }
}


