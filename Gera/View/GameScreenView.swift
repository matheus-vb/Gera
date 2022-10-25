//
//  GameScreenView.swift
//  Gera
//
//  Created by matheusvb on 25/10/22.
//

import Foundation
import SwiftUI

struct GameScreenView: View {
    var body: some View {
        ZStack {
            Color(hex: "112E56")
                .edgesIgnoringSafeArea(.all)
            Group {
                Image("Mesa_INFERIOR")
                    .offset(y: 320)
                Image("Mesa_MEIO")
                    .offset(y: 50)
                Image("Mesa_SUPERIOR")
                    .offset(y: -180)
            }
            Group {
                Button(action: {
                    //config view
                }) {
                    Image("Config_Button")
                }.offset(x: 130, y: -300)
                Image("TEMPO")
                    .offset(x: -130, y: -300)
            }
            Group {
                Image("p1_blue")
                    .offset(x: 75,y: 245)
                Image("p1_pink")
                    .offset(x: 150,y: 245)
                Image("p1_red")
                    .offset(x: 0,y: 245)
                Image("p1_orange")
                    .offset(x: -75,y: 245)
                Image("p1_purple")
                    .offset(x: -150,y: 245)
            }
            Group {
                Image("p2_cyan")
                    .offset(x: 150, y: -210)
                Image("p2_brown")
                    .offset(x: 75, y: -210)
                Image("p2_yellow")
                    .offset(x: 0, y: -210)
                Image("p2_lightGreen")
                    .offset(x: -75, y: -210)
                Image("p2_darkGreen")
                    .offset(x: -150, y: -210)
            }
            Group {
                Image("bacteria_PH")
                    .offset(y: 12)
                    
            }
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 208, height: 16)
                .foregroundColor(Color(hex: "FFF"))
                .offset(y: -85)
                .overlay {
                    Rectangle()
                        .frame(width: 104)
                        .offset(x: -52, y: -85)
                        .foregroundColor(Color(.blue))
                    Rectangle()
                        .frame(width: 104)
                        .offset(x: 52, y: -85)
                        .foregroundColor(Color(.red))
                }
        }
    }
}

struct GameScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GameScreenView()
    }
}


