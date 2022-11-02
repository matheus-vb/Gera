//
//  PopupSettingsView.swift
//  Gera
//
//  Created by acrn on 27/10/22.
//

import SwiftUI
import AVFoundation

struct Settings : View {
    @State var click : Bool = false
    @State var music : Bool = false
    @State var notification : Bool = false
    @State var audioPlayer2: AVAudioPlayer!
    @Binding var isHiddenPopup: Bool
    @Binding var changeVolume: Bool
    
    var body: some View {
//        NavigationView (){
            
            ZStack {
//                Image("Partida6")
                Rectangle()
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.5)
//                
                Image("clipboard1")
                    .offset(y:-50)
                
                
                Text("Configurações")
                    .multilineTextAlignment(.center)
                    .offset(y:-150)
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .frame(width: 171)
                
                Button (action: {
                    isHiddenPopup = false
                    let sound = Bundle.main.path(forResource: "clickSound", ofType: "wav")
                    self.audioPlayer2 = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                    audioPlayer2.play()
                }) {
                    Image("buttonClose")
                }
                .offset(x: 100 ,y: -180)
                
                Button (action: {
                    click.toggle()
                    changeVolume.toggle()
                    
                    let sound = Bundle.main.path(forResource: "clickSound", ofType: "wav")
                    self.audioPlayer2 = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                    audioPlayer2.play()
                    
                    if click {
                        volume = 0
                    }else {
                        volume = 1
                    }
                        
                    // colocar uma navigation link
                }) {
                    Image(click ? "buttonSoundPressed" : "buttonSound1")
                    
                    
                }
                .offset(y: -80)
                
                Button (action: {
                    music.toggle()
                    let sound = Bundle.main.path(forResource: "clickSound", ofType: "wav")
                    self.audioPlayer2 = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                    audioPlayer2.play()
                    // colocar uma navigation link
                }) {
                    Image(music ? "buttonMusicPressed" : "buttonMusic")
                }
                .offset(y: -30)
                
                Button (action: {
                    notification.toggle()
                    let sound = Bundle.main.path(forResource: "clickSound", ofType: "wav")
                    self.audioPlayer2 = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                    audioPlayer2.play()
                    // colocar uma navigation link
                }) {
                    Image(notification ? "buttonNotificationPressed" : "buttonNotification")
                }
                .offset(y: 20)
                
                NavigationLink (destination: StartScreenView(), label: {
                    Image("buttonHome")
                }).simultaneousGesture(TapGesture().onEnded{
                    let sound = Bundle.main.path(forResource: "clickSound", ofType: "wav")
                    self.audioPlayer2 = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                    audioPlayer2.play()
                })
                .offset(x: -80, y: 100)
                
                Button(action: {
                    let sound = Bundle.main.path(forResource: "clickSound", ofType: "wav")
                    self.audioPlayer2 = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                    audioPlayer2.play()
                    
                    // colocar uma navigation link
                }) {
                    Image("buttonQuestion")
                    
                }.offset(x: 80, y: 100)
                
            }
//        }.navigationBarBackButtonHidden(true)
    }
}

//struct Settings_Previews: PreviewProvider {
//    static var previews: some View {
//        GameScreenView(player: 1)
//    }
//}

