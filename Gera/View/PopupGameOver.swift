//
//  PopupGameOver.swift
//  Gera
//
//  Created by acrn on 27/10/22.
//

import SwiftUI
import AVFoundation

struct GameOver : View {
    @State var audioPlayer: AVAudioPlayer!
    @State var audioPlayer2: AVAudioPlayer!
    
    var time: Int
    
    var body: some View {
        
        NavigationView(){
            
            ZStack {
                Rectangle()
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.9)
                
                Image("gameOver")
                    .offset(y:-50)
                
                Text("A bactéria derrotou vocês em:")
                    .multilineTextAlignment(.center)
                    .offset(y:-70)
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .frame(width: 210)
                
                Text("\(30 - time)seg")
                    .offset(y: 5)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
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
                    Image("buttonReload")
                    
                }.offset(x: 80, y: 100)
                
            }.onAppear {
                let sound = Bundle.main.path(forResource: "gameOverSound", ofType: "wav")
                self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                audioPlayer.play()
            }
            
        }.navigationBarBackButtonHidden(true)
    }
}

struct GameOver_Previews: PreviewProvider {
    static var previews: some View {
        GameOver(time: 10)
    }
}


