//
//  GameScreenView.swift
//  Gera
//
//  Created by matheusvb on 25/10/22.
//

import Foundation
import SwiftUI

struct GameScreenView: View {
    
    let player: Int
    
    var playerColors: PlayerColors
    
    @EnvironmentObject var gameConnectionManager: GameConnectionManager
    
    let asset1: String
    let asset2: String
    let asset3: String
    let asset4: String
    let asset5: String
    
    let asset6: String
    let asset7: String
    let asset8: String
    let asset9: String
    let asset10: String
    
    init(player: Int) {
        self.player = player
        
        if player == 1 {
            playerColors = PlayerColors(player: 1)
            asset1 = "p1_purple"
            asset2 = "p1_orange"
            asset3 = "p1_red"
            asset4 = "p1_blue"
            asset5 = "p1_pink"
            asset6 = "p1_darkGreen"
            asset7 = "p1_lightGreen"
            asset8 = "p1_yellow"
            asset9 = "p1_brown"
            asset10 = "p1_cyan"
            
        } else if player == 2 {
            playerColors = PlayerColors(player: 2)
            asset1 = "p2_darkGreen"
            asset2 = "p2_lightGreen"
            asset3 = "p2_yellow"
            asset4 = "p2_brown"
            asset5 = "p2_cyan"
            asset6 = "p2_purple"
            asset7 = "p2_orange"
            asset8 = "p2_red"
            asset9 = "p2_blue"
            asset10 = "p2_pink"
            
        } else {
            playerColors = PlayerColors(player: 0)
            asset1 = "p1_purple"
            asset2 = "p1_orange"
            asset3 = "p1_red"
            asset4 = "p1_blue"
            asset5 = "p1_pink"
            asset6 = "p1_lightGreen"
            asset7 = "p1_darkGreen"
            asset8 = "p1_yellow"
            asset9 = "p1_brown"
            asset10 = "p1_cyan"
        }
    }
    
    @State var playerOnePlayed: Bool = false
    @State var playerTwoPlayed: Bool = false
    
    let location1: CGPoint = CGPoint(x: -150, y: 245)
    let location2: CGPoint = CGPoint(x: -75, y: 245)
    let location3: CGPoint = CGPoint(x: 0, y: 245)
    let location4: CGPoint = CGPoint(x: 75, y: 245)
    let location5: CGPoint = CGPoint(x: 150, y: 245)
    
    @State var timeRemaining = 30
    @State var timeRemainingString = "30"
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @State var offset1: CGPoint = CGPoint(x: -150, y: 245)
    @State var offset2: CGPoint = CGPoint(x: -75, y: 245)
    @State var offset3: CGPoint = CGPoint(x: 0, y: 245)
    @State var offset4: CGPoint = CGPoint(x: 75, y: 245)
    @State var offset5: CGPoint = CGPoint(x: 150, y: 245)
    
    @State var colorLeft: Color = Color(hex: "FFF")
    @State var colorRight: Color = Color(hex: "FFF")
    
    @GestureState var startLocation: CGPoint? = nil
    
    //MARK: - Purple drag
    var dragGesture1: some Gesture {
        DragGesture()
            .onChanged { value in
                var newLocation = startLocation ?? offset1 // 3
                newLocation.x += value.translation.width
                newLocation.y += value.translation.height
                withAnimation(.spring()) {
                    self.offset1 = newLocation
                }
            }.updating($startLocation) { (value, startLocation, transaction) in
                startLocation = startLocation ?? offset1 // 2
            }.onEnded { value in
                withAnimation(.spring()) {
                    
                    if value.location.y < 110 && value.location.y > -10 && gameConnectionManager.isTurn {
                        gameConnectionManager.send(colorName: playerColors.color1)
                        withAnimation(.easeInOut(duration: 0.5)) {
                            self.colorLeft = Color(hex: playerColors.color1)
                        }
                        withAnimation(.easeInOut(duration: 1)) {
                            self.offset1 = location1
                        }
                    }else {
                        self.offset1 = location1
                    }
                }
            }
    }
    
    //MARK: - Orange drag
    var dragGesture2: some Gesture {
        DragGesture()
            .onChanged { value in
                var newLocation = startLocation ?? offset2 // 3
                newLocation.x += value.translation.width
                newLocation.y += value.translation.height
                withAnimation(.spring()) {
                    self.offset2 = newLocation
                }
            }.updating($startLocation) { (value, startLocation, transaction) in
                startLocation = startLocation ?? offset2 // 2
            }.onEnded { value in
                withAnimation(.spring()) {
                    
                    if value.location.y < 110 && value.location.y > -10 && gameConnectionManager.isTurn {
                        gameConnectionManager.send(colorName: playerColors.color2)
                        withAnimation(.easeInOut(duration: 0.5)) {
                            self.colorLeft = Color(hex: playerColors.color2)
                        }
                        withAnimation(.easeInOut(duration: 1)) {
                            self.offset2 = location2
                        }
                    }else {
                        self.offset2 = location2
                    }
                }
            }
    }
    
    //MARK: - Red drag
    var dragGesture3: some Gesture {
        DragGesture()
            .onChanged { value in
                var newLocation = startLocation ?? offset3 // 3
                newLocation.x += value.translation.width
                newLocation.y += value.translation.height
                withAnimation(.spring()) {
                    self.offset3 = newLocation
                }
            }.updating($startLocation) { (value, startLocation, transaction) in
                startLocation = startLocation ?? offset3 // 2
            }.onEnded { value in
                withAnimation(.spring()) {
                    
                    if value.location.y < 110 && value.location.y > -10 && gameConnectionManager.isTurn {
                        gameConnectionManager.send(colorName: playerColors.color3)
                        withAnimation(.easeInOut(duration: 0.5)) {
                            self.colorLeft = Color(hex: playerColors.color3)
                        }
                        withAnimation(.easeInOut(duration: 1)) {
                            self.offset3 = location3
                        }
                    }else {
                        self.offset3 = location3
                    }
                }
            }
    }
    
    //MARK: - Blue drag
    var dragGesture4: some Gesture {
        DragGesture()
            .onChanged { value in
                var newLocation = startLocation ?? offset4 // 3
                newLocation.x += value.translation.width
                newLocation.y += value.translation.height
                withAnimation(.spring()) {
                    self.offset4 = newLocation
                }
            }.updating($startLocation) { (value, startLocation, transaction) in
                startLocation = startLocation ?? offset4 // 2
            }.onEnded { value in
                withAnimation(.spring()) {
                    
                    if value.location.y < 110 && value.location.y > -10 && gameConnectionManager.isTurn {
                        gameConnectionManager.send(colorName: playerColors.color4)
                        withAnimation(.easeInOut(duration: 0.5)) {
                            self.colorLeft = Color(hex: playerColors.color4)
                        }
                        withAnimation(.easeInOut(duration: 1)) {
                            self.offset4 = location4
                        }
                    }else {
                        self.offset4 = location4
                    }
                }
            }
    }
    
    //MARK: - Pink drag
    var dragGesture5: some Gesture {
        DragGesture()
            .onChanged { value in
                var newLocation = startLocation ?? offset5 // 3
                newLocation.x += value.translation.width
                newLocation.y += value.translation.height
                withAnimation(.spring()) {
                    self.offset5 = newLocation
                }
            }.updating($startLocation) { (value, startLocation, transaction) in
                startLocation = startLocation ?? offset5 // 2
            }.onEnded { value in
                withAnimation(.spring()) {
                    
                    if value.location.y < 110 && value.location.y > -10 && gameConnectionManager.isTurn {
                        gameConnectionManager.send(colorName: playerColors.color5)
                        withAnimation(.easeInOut(duration: 0.5)) {
                            self.colorLeft = Color(hex: playerColors.color5)
                        }
                        withAnimation(.easeInOut(duration: 1)) {
                            self.offset5 = location5
                        }
                    }else {
                        self.offset5 = location5
                    }
                }
            }
    }
    
    
    //MARK: - VIEW BODY
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
                Text("00:\(timeRemainingString)")
                    .onReceive(timer) { _ in
                        if timeRemaining > 0 {
                            timeRemaining -= 1
                            if timeRemaining < 10 {
                                timeRemainingString = "0\(timeRemaining)"
                            }else {
                                timeRemainingString = "\(timeRemaining)"
                            }
                        }
                    }
                    .offset(x: -130, y: -300)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.white))
            }
            Group {
                Image(asset10)
                    .offset(x: 150, y: -210)
                Image(asset9)
                    .offset(x: 75, y: -210)
                Image(asset8)
                    .offset(x: 0, y: -210)
                Image(asset7)
                    .offset(x: -75, y: -210)
                Image(asset6)
                    .offset(x: -150, y: -210)
            }
            Group {
                Image("bacteria_PH")
                    .offset(y: 12)
                    
            }
            Group {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 208, height: 16)
                    .foregroundColor(Color(hex: "FFF"))
                    .offset(y: -85)
                    .overlay {
                        Rectangle()
                            .frame(width: 100)
                            .offset(x: -52, y: -85)
                            .foregroundColor(colorLeft)
                        Rectangle()
                            .frame(width: 100)
                            .offset(x: 52, y: -85)
                            .foregroundColor(Color(hex: gameConnectionManager.colorCode))
                            .animation(.easeInOut(duration: 0.5), value: gameConnectionManager.colorCode)
                        
                    }
                Image("barBorder")
                    .offset(y: -85)
            }
            Group {
                Image(asset1)
                    .offset(CGSize(width: offset1.x, height: offset1.y))
                    .gesture(dragGesture1)
                
                Image(asset2)
                    .offset(CGSize(width: offset2.x, height: offset2.y))
                    .gesture(dragGesture2)
                
                Image(asset3)
                    .offset(CGSize(width: offset3.x, height: offset3.y))
                    .gesture(dragGesture3)
                
                Image(asset4)
                    .offset(CGSize(width: offset4.x, height: offset4.y))
                    .gesture(dragGesture4)
                
                Image(asset5)
                    .offset(CGSize(width: offset5.x, height: offset5.y))
                    .gesture(dragGesture5)
                
            }
        }
    }
}

struct GameScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GameScreenView(player: 2)
            .environmentObject(GameConnectionManager())
    }
}


