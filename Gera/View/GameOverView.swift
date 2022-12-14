//
//  PopupGameOver.swift
//  Gera
//
//  Created by acrn on 27/10/22.
//

import SwiftUI
import AVFoundation

struct GameOverView : View {
    @State var audioPlayer: AVAudioPlayer!
    @State var audioPlayer2: AVAudioPlayer!
    
    var time: Int
    
    var body: some View {
            ZStack {
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
                    .foregroundColor(.black)
                    .frame(width: 210)
                
                Text("\(30 - time)seg")
                    .offset(y: 5)
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                
                NavigationLink (destination: StartScreenView(), label: {
                    Image("buttonHome")
                }).simultaneousGesture(TapGesture().onEnded{
                    let sound = Bundle.main.path(forResource: "clickSound", ofType: "wav")
                    self.audioPlayer2 = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                    audioPlayer2.play()
                })
                .offset(x: 0, y: 100)
                
//                Button(action: {
//                    let sound = Bundle.main.path(forResource: "clickSound", ofType: "wav")
//                    self.audioPlayer2 = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
//                    audioPlayer2.play()
//                    // colocar uma navigation link
//                }) {
//                    Image("buttonReload")
//
//                }.offset(x: 80, y: 100)
                
            }.onAppear {
                let sound = Bundle.main.path(forResource: "gameOverSound", ofType: "wav")
                self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                audioPlayer.play()
            }.navigationBarBackButtonHidden(true)
            
//        }.navigationBarBackButtonHidden(true)
    }
}

struct GameOver_Previews: PreviewProvider {
    static var previews: some View {
        GameOverView(time: 10)
    }
}


