//
//  PopupView.swift
//  Gera
//
//  Created by acrn on 27/10/22.
//

import SwiftUI
import AVFoundation

struct Congratulations: View {
    @State var audioPlayer: AVAudioPlayer!
    @State var audioPlayer2: AVAudioPlayer!
    
    var time: String = "01:01"
    var body: some View {
        NavigationView(){
            ZStack {
                Image("Partida6")
                Rectangle()
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.5)
                
                Image("congrats")
                    .offset(y:-50)
                Text("Vocês salvaram o mundo em:")
                    .multilineTextAlignment(.center)
                    .offset(y:-60)
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .frame(width: 171)
                Text(time)
                    .offset(y: 20)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                NavigationLink (destination: StartScreenView(), label: {
                    Image("buttonHome")
                })  .simultaneousGesture(TapGesture().onEnded{
                    let sound = Bundle.main.path(forResource: "clickSound", ofType: "wav")
                    self.audioPlayer2 = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                    audioPlayer2.play()
                })
                .offset(x: -80, y: 124)
                
                
                Button(action: {
                    let sound = Bundle.main.path(forResource: "clickSound", ofType: "wav")
                    self.audioPlayer2 = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                    audioPlayer2.play()
                    
                    // colocar uma navigation link
                }) {
                    Image("buttonReload")
                    
                }.offset(x: 80, y: 124)
                
                
            }.onAppear {
                let sound = Bundle.main.path(forResource: "Ganhou_2_PopUp", ofType: "wav")
                self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                audioPlayer.play()
            }
            
        }.navigationBarBackButtonHidden(true)
    }
}

struct Congratulations_Previews: PreviewProvider {
    static var previews: some View {
        Congratulations()
    }
}
