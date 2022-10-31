//
//  PopupSettingsView.swift
//  Gera
//
//  Created by acrn on 27/10/22.
//

import SwiftUI

struct Settings : View {
    @State var sound : Bool = false
    @State var music : Bool = false
    @State var notification : Bool = false
    
    var body: some View {
        NavigationView (){
            
            ZStack {
                Image("Partida6")
                Rectangle()
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.5)
                
                Image("clipboard")
                    .offset(y:-50)
                
                Button (action: {
                    
                }) {
                    Image("buttonClose")
                        .offset(x: 100 ,y: -180)
                }
                
                Text("Configurações")
                    .multilineTextAlignment(.center)
                    .offset(y:-150)
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .frame(width: 171)
                
                Button (action: {
                    sound.toggle()
                    // colocar uma navigation link
                }) {
                    Image(sound ? "buttonSoundPressed" : "buttonSound1")
                }
                .offset(y: -80)
                
                Button (action: {
                    music.toggle()
                    // colocar uma navigation link
                }) {
                    Image(music ? "buttonMusicPressed" : "buttonMusic")
                }
                .offset(y: -30)
                
                Button (action: {
                    notification.toggle()
                    // colocar uma navigation link
                }) {
                    Image(notification ? "buttonNotificationPressed" : "buttonNotification")
                }
                .offset(y: 20)
                
                NavigationLink (destination: StartScreenView(), label: {
                    Image("buttonHome")
                })
                .offset(x: -80, y: 100)
                
                Button(action: {
                    // colocar uma navigation link
                }) {
                    Image("buttonReload")
                    
                }.offset(x: 80, y: 100)
                
            }
        }
        }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}

