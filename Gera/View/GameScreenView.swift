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
    
    @State var gameStarted: Bool = false
    @State var playerTwoPlayed: Bool = false
    
    @State var missed: Bool = false
    @State var missOpacity: Double = 0
    
    @State var currColor = "FFF"
    @State var playerOneColor = ""
    @State var mixColor = "FFF"
    
    @State var gameOver: Bool = false
    
    let location1: CGPoint = CGPoint(x: -120, y: 245)
    let location2: CGPoint = CGPoint(x: 0, y: 245)
    let location3: CGPoint = CGPoint(x: 120, y: 245)
    
    @State var timeRemaining = 30
    @State var timeRemainingString = "30"
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @State var offset1: CGPoint = CGPoint(x: -120, y: 245)
    @State var offset2: CGPoint = CGPoint(x: 0, y: 245)
    @State var offset3: CGPoint = CGPoint(x: 120, y: 245)
    
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
                            self.playerOneColor = playerColors.color1
                        }
                        withAnimation(.easeInOut(duration: 1)) {
                            self.offset1 = location1
                        }
                        
                        if player == 1 {
                            self.playerTwoPlayed = false
                            self.gameStarted = true
                        } else if player == 2 {
                            self.playerTwoPlayed = true
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
                            self.playerOneColor = playerColors.color2
                        }
                        withAnimation(.easeInOut(duration: 1)) {
                            self.offset2 = location2
                        }
                        
                        if player == 1 {
                            self.playerTwoPlayed = false
                            self.gameStarted = true
                        } else if player == 2 {
                            self.playerTwoPlayed = true
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
                            self.playerOneColor = playerColors.color3
                        }
                        withAnimation(.easeInOut(duration: 1)) {
                            self.offset3 = location3
                        }
                        
                        if player == 1 {
                            self.playerTwoPlayed = false
                            self.gameStarted = true
                        } else if player == 2 {
                            self.playerTwoPlayed = true
                        }
                        
                    }else {
                        self.offset3 = location3
                    }
                }
            }
    }
    
    init(player: Int) {
        self.player = player
        
        if player == 1 {
            playerColors = PlayerColors(player: 1)
            asset1 = "p1_yellow"
            asset2 = "p1_red"
            asset3 = "p1_blue"
            asset4 = "p1_blue"
            asset5 = "p1_pink"
            
            asset6 = "p1_purple"
            asset7 = "p1_darkGreen"
            asset8 = "p1_orange"
            asset9 = "p1_brown"
            asset10 = "p1_cyan"
            
        } else if player == 2 {
            playerColors = PlayerColors(player: 2)
            asset1 = "p2_orange"
            asset2 = "p2_darkGreen"
            asset3 = "p2_purple"
            asset4 = "p2_brown"
            asset5 = "p2_cyan"
            
            asset6 = "p2_blue"
            asset7 = "p2_red"
            asset8 = "p2_yellow"
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
    
    //MARK: - VIEW BODY
    var body: some View {
        NavigationView() {
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
                    Rectangle()
                        .frame(width: 200, height: 100)
                        .foregroundColor(Color(hex: currColor))
                        .animation(.easeIn, value: currColor)
                        .task(delayBacteria)
                }
                Group {
                    Button(action: {
                        //config view
                        
                        
                    }) {
                        Image("Config_Button")
                    }.offset(x: 130, y: -300)
                    Image("Relogio")
                        .offset(x: 0, y: -316)
                    Text("00:\(timeRemainingString)")
                        .onReceive(timer) { _ in
                            
                            
                            
                            if timeRemaining > 0 {
                                timeRemaining -= 1
                                if timeRemaining <= 5{
                                    vibrate(type: .warning)
                                }
                                if timeRemaining < 10 {
                                    timeRemainingString = "0\(timeRemaining)"
                                }else {
                                    timeRemainingString = "\(timeRemaining)"
                                }
                            }else if timeRemaining == 0 {
                                self.gameOver = true
                            }
                        }
                        .offset(y: -300)
                        .font(.system(size: 24))
                        .fontWeight(.medium)
                    
                    Button(action: {
                        missed.toggle()
                        Task {
                            await delayAnimation()
                        }
                    }){
                        Image("buttonExit")
                    }
                    .offset(x:-130, y: -300)
                }
                Group {
                    Image(asset8)
                        .offset(x: 120, y: -210)
                    Image(asset7)
                        .offset(x: 0, y: -210)
                    Image(asset6)
                        .offset(x: -120, y: -210)
                }
                Group {
                    Image("bac1Game")
                        .offset(y: 12)
                }
                
                Group {
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 208, height: 16)
                        .foregroundColor(Color(hex: gameConnectionManager.mixColor))
                        .offset(y: -85)
                        .task(checkResult)
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
                    Image("miss_Screen")
                        .offset(y: -5)
                        .opacity(missed ? 1 : 0)
                        .animation(.spring(), value: missed)
                    
                }
            }.navigationBarBackButtonHidden(true)
        }
    }
    
    private func vibrate(type: UINotificationFeedbackGenerator.FeedbackType){
        //faz a vibração
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
    
    private func checkResult() async {
        while(true) {
            if currColor == gameConnectionManager.mixColor {
                print("-----DONE-----")
            }
            try? await Task.sleep(nanoseconds: 100_000_000)
        }
    }
    
    private func delayAnimation() async {
        try? await Task.sleep(nanoseconds: 3_000_000_000)
        missed.toggle()
    }
    
    private func delayBacteria() async {
        let colors = ColorCodes()
        
        while(true) {
            currColor = colors.YELLOWpGREEN
            try? await Task.sleep(nanoseconds: 500_000_000)
            
            currColor = colors.YELLOWpORANGE
            try? await Task.sleep(nanoseconds: 500_000_000)
            
            currColor = colors.YELLOWpPURPLE
            try? await Task.sleep(nanoseconds: 500_000_000)
            
            currColor = colors.REDpGREEN
            try? await Task.sleep(nanoseconds: 500_000_000)
            
            currColor = colors.REDpORANGE
            try? await Task.sleep(nanoseconds: 500_000_000)
            
            currColor = colors.REDpPURPLE
            try? await Task.sleep(nanoseconds: 500_000_000)
            
            currColor = colors.BLUEpGREEN
            try? await Task.sleep(nanoseconds: 500_000_000)
            
            currColor = colors.BLUEpORANGE
            try? await Task.sleep(nanoseconds: 500_000_000)
            
            currColor = colors.BLUEpPURPLE
            try? await Task.sleep(nanoseconds: 500_000_000)
        }
    }
}

struct GameScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GameScreenView(player: 1)
            .environmentObject(GameConnectionManager())
    }
}


