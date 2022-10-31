//
//  StartScreenView.swift
//  Gera
//
//  Created by matheusvb on 24/10/22.
//

import Foundation
import SwiftUI
import AVFoundation

struct StartScreenView: View {
    @State var animatingI = false
    @State var animatingJ = true
    
    @State var audioPlayer: AVAudioPlayer!
    
    let gradient = Gradient(colors: [
        Color(hex: "7DD2EC"),
        Color(hex: "407B9E"),
        Color(hex: "112E56"),
        Color(hex: "112E56"),
        Color(hex: "112E56")
    ])
    
    var body: some View {
        NavigationView() {
            ZStack {
                Group {
                    Color(hex: "112E56")
                        .edgesIgnoringSafeArea(.all)
                    RadialGradient(gradient: gradient, center: .center, startRadius: 0, endRadius: 520)
                        .edgesIgnoringSafeArea(.all)
                        .opacity(0.65)
                }
                Group {
                    Image("bubble1")
                    Image("bubble2")
                    Image("Title")
                        .offset(y: -182)
                }
                Group {
                    Image("bac1")
                        .offset(x: {
                            if animatingJ && !animatingI {
                                return 10
                            }  else if animatingJ && animatingI {
                                return -10
                            } else {
                                return 15
                            }
                        }(),
                                y: {
                            if animatingJ && !animatingI {
                                return 20
                            }  else if animatingJ && animatingI {
                                return 40
                            } else {
                                return 10
                            }
                        }())
                        .animation(.easeInOut(duration: 3.5).repeatForever(), value: animatingJ)
                        .onAppear {
                            animatingJ.toggle()
                        }
                        .onChange(of: animatingJ) { _ in
                            animatingI.toggle()
                            animatingJ.toggle()
                            
                        }
                    Image("bac2") // -130, -150
                        .offset(x: {
                            if animatingJ && !animatingI {
                                return -140
                            }  else if animatingJ && animatingI {
                                return -130
                            } else {
                                return -135
                            }
                        }(),
                                y: {
                            if animatingJ && !animatingI {
                                return -95
                            }  else if animatingJ && animatingI {
                                return -100
                            } else {
                                return -110
                            }
                        }())
                        .animation(.easeInOut(duration: 3).repeatForever(), value: animatingJ)
                    Image("bac3") //-120, 180
                        .offset(x: {
                            if animatingJ && !animatingI {
                                return -115
                            }  else if animatingJ && animatingI {
                                return -130
                            } else {
                                return -110
                            }
                        }(),
                                y: {
                            if animatingJ && !animatingI {
                                return 200
                            }  else if animatingJ && animatingI {
                                return 160
                            } else {
                                return 170
                            }
                        }())
                        .animation(.easeInOut(duration: 3).repeatForever(), value: animatingJ)
                    Image("bac4") //130, 140
                        .offset(x: {
                            if animatingJ && !animatingI {
                                return 120
                            }  else if animatingJ && animatingI {
                                return 130
                            } else {
                                return 145
                            }
                        }(),
                                y: {
                            if animatingJ && !animatingI {
                                return 140
                            }  else if animatingJ && animatingI {
                                return 160
                            } else {
                                return 130
                            }
                        }())
                        .animation(.easeInOut(duration: 3).repeatForever(), value: animatingJ)
                }
                Group {
                    NavigationLink(destination: ConnexionScreenView(), label: {Image("buttonJogar")})
                        .offset(y:260)
                    
                    Button(action: {
                        print("d")
                    }) {
                        Image("buttonHelp")
                    }
                    .offset(x: -130,y: -300)
                    
                    Button(action: {
                        print("d")
                    }) {
                        Image("buttonSound")
                    }
                    .offset(x: 130,y: -300)
                    
                }
            }.onAppear {
                let sound = Bundle.main.path(forResource: "backMusic", ofType: "mp3")
                self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                audioPlayer.play()
                audioPlayer.numberOfLoops = -1
            }
        }
    }
}

struct StartScreenView_Previews: PreviewProvider {
    static var previews: some View {
        StartScreenView()
    }
}
