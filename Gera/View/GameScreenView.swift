//
//  GameScreenView.swift
//  Gera
//
//  Created by matheusvb on 25/10/22.
//

import Foundation
import SwiftUI
import AVFoundation

var volume: Float = 1

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
    
    let asset_empty: String = "p1_empty"
    
    let pathBounds = UIBezierPath.calculateBounds(paths: [.bac1path1, .bac1path2, .bac1path3, .bac1path4, .bac1path5, .bac1path6, .bac1path7, .bac1path8, .bac1path9, .bac1path10, .bac1path11, .bac1path12, .bac1path13, .bac1path14, .bac1path15, .bac1path16, .bac1path17, .bac1path18, .bac1path19, .bac1path20, .bac1path21, .bac1path22, .bac1path23, .bac1path24, .bac1path25, .bac1path26, .bac1path27, .bac1path28, .bac1path29, .bac1path30, .bac1path31, .bac1path32, .bac1path33, .bac1path34, .bac1path35, .bac1path36, .bac1path37, .bac1path38, .bac1path39, .bac1path40, .bac1path41, .bac1path42, .bac1path43, .bac1path44, .bac1path45])
    
    @State var gameStarted: Bool = false
    @State var playerTwoPlayed: Bool = false
    
    @State var erlen1: String
    @State var erlen2: String
    @State var erlen3: String
    @State var erlen4: String
    @State var erlen5: String
    @State var erlen6: String
    @State var erlen7: String
    @State var erlen8: String
    @State var erlen9: String
    @State var erlen10: String
    
    @State var missed: Bool = false
    @State var missOpacity: Double = 0
    
    @State var currColor = "FFF"
    @State var playerOneColor = ""
    @State var mixColor = "FFF"
    
    @State var remainingTries = 5
    @State var glassLabel = "Frente_Pote"
    
    @State var gameOver: Bool = false
    @State var gameWon: Bool = false
    @State var didQuit: Bool = false
    
    let location1: CGPoint = CGPoint(x: -120, y: 245)
    let location2: CGPoint = CGPoint(x: 0, y: 245)
    let location3: CGPoint = CGPoint(x: 120, y: 245)
    
    @State var finalTime = 0
    @State var timeRemaining = 30
    @State var timeRemainingString = "30"
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @State var offset1: CGPoint = CGPoint(x: -120, y: 245)
    @State var offset2: CGPoint = CGPoint(x: 0, y: 245)
    @State var offset3: CGPoint = CGPoint(x: 120, y: 245)
    
    @State var colorLeft: Color = Color(hex: "FFF")
    @State var colorRight: Color = Color(hex: "FFF")
    
    @GestureState var startLocation: CGPoint? = nil
    
    @State var audioPlayer: AVAudioPlayer!
    
    @State var isHiddenPopup = false
    
    @State var changeVolume = false
    
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
                        Task{
                            await changeAsset(dragGesture: 1)
                        }
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
                        Task{
                            await changeAsset(dragGesture: 2)
                        }
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
                        Task{
                            await changeAsset(dragGesture: 3)
                        }
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
        
        erlen1 = asset1
        erlen2 = asset2
        erlen3 = asset3
        erlen4 = asset4
        erlen5 = asset5
        erlen6 = asset6
        erlen7 = asset7
        erlen8 = asset8
        erlen9 = asset9
        erlen10 = asset10
        
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
                }
                Group {
                    Button(action: {
                        isHiddenPopup = true
                        //config view
//                        gameWon.toggle()
                        
                    }) {
                        Image("Config_Button")
                    }.offset(x: 130, y: -300)
                    Image("Relogio")
                        .offset(x: 0, y: -316)
                    Text("00:\(timeRemainingString)")
                        .foregroundColor(.black)
                        .onReceive(timer) { _ in
                            if gameWon || gameOver {
                                self.finalTime = timeRemaining
                                                            
                            } else {
                                if timeRemaining > 0 {
                                    timeRemaining -= 1
                                    if timeRemaining <= 5{
                                        NotificationConfiguration.vibrate(type: .warning)
                                    }
                                    if timeRemaining < 10 {
                                        timeRemainingString = "0\(timeRemaining)"
                                    }else {
                                        timeRemainingString = "\(timeRemaining)"
                                    }
                                }else if timeRemaining == 0 {
                                    Task {
                                        await delayReset()
                                    }
                                    self.gameOver = true
                                }
                            }
                        }
                        .offset(y: -300)
                        .font(.system(size: 24))
                        .fontWeight(.medium)
                    
                    Button(action: {
                        Task {
                            await delayStartScreen()
                        }
                    }){
                        Image("buttonExit")
                    }
                    .offset(x:-130, y: -300)
                }
                
                Group {
                    Image(erlen8)
                        .offset(x: 120, y: -210)
                    Image(erlen7)
                        .offset(x: 0, y: -210)
                    Image(erlen6)
                        .offset(x: -120, y: -210)
                    
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 208, height: 16)
                        .foregroundColor(Color(hex: gameConnectionManager.mixColor))
                        .offset(y: -85)
                        .task(checkResult)
                        .task(checkGameOver)
                    Image("barBorder")
                        .offset(y: -85)
                }
                
                Group {
                    Image("Costas_Pote")
                        .offset(y: 42)
                    BacteriaShapeView(color: currColor)
                        .frame(width: 60)
                        .scaleEffect(1)
                        .offset(x: -2, y: 410)
                        .animation(.easeIn, value: currColor)
                        .task(delayBacteria)
                    Image("bacShadow")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .offset(x: -1,y: 20)
                        .frame(width: 63)
                    Image(glassLabel)
                        .offset(y: 10)
                        .opacity(0.8)
                    Text("Tentativas restantes: \(remainingTries)")
                        .foregroundColor(.white)
                        .font(.system(size: 18))
                        .fontWeight(.medium)
                        .offset(y: 102)
                }
                Group {
                    Image(erlen1)
                        .offset(CGSize(width: offset1.x, height: offset1.y))
                        .gesture(dragGesture1)
                    
                    Image(erlen2)
                        .offset(CGSize(width: offset2.x, height: offset2.y))
                        .gesture(dragGesture2)
                    
                    Image(erlen3)
                        .offset(CGSize(width: offset3.x, height: offset3.y))
                        .gesture(dragGesture3)
                    Image("miss_Screen")
                        .offset(y: -5)
                        .opacity(missed ? 1 : 0)
                        .animation(.spring(), value: missed)
                    
                }
//                NavigationLink(destination: Congratulations(time: finalTime), isActive: $gameWon) {
//                    EmptyView()
//                }
//                NavigationLink(destination: GameOver(time: finalTime), isActive: $gameOver) {
//                    EmptyView()
//                }
                
                Group {
                    Settings(isHiddenPopup: $isHiddenPopup, changeVolume: $changeVolume)
                } .isHidden(!isHiddenPopup, remove: !isHiddenPopup)
                
                Group {
                    Congratulations(time: finalTime)
                } .isHidden(!gameWon, remove: !gameWon)
                
                Group {
                    GameOver(time: finalTime)
                } .isHidden(!gameOver, remove: !gameOver)
                
                NavigationLink(destination: StartScreenView(), isActive: $didQuit) {
                    EmptyView()
                }
                    
            }.navigationBarBackButtonHidden(true)
//                .onAppear {
//                    let sound = Bundle.main.path(forResource: "backGameMusic", ofType: "mp3")
//                    self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
//                    audioPlayer.play()
//                    audioPlayer.numberOfLoops = -1
//                    audioPlayer.setVolume(volume, fadeDuration: -1)
//                }
        }.navigationBarBackButtonHidden(true)
    }
    
    private func checkGameOver() async {
        try? await Task.sleep(nanoseconds: 250_000_000)
        
        while(true) {
            if currColor != gameConnectionManager.mixColor && gameConnectionManager.mixColor != "FFF" {
                self.remainingTries -= 1
                await delayAnimation()
            }
            
            if remainingTries < 3 {
                self.glassLabel = "Frente_Rachado"
            }
            
            if remainingTries == 0 {
                gameConnectionManager.resetConnection()
                try? await Task.sleep(nanoseconds: 100_000_000)
                self.gameOver = true
                gameConnectionManager.send(colorName: "lost")
                
            } else if gameConnectionManager.gameOver {
                gameConnectionManager.resetConnection()
                try? await Task.sleep(nanoseconds: 100_000_000)
                self.gameOver = true
            }
            
            try? await Task.sleep(nanoseconds: 500_000_000)
        }
    }
    
    private func checkResult() async {
        while(true) {
            if currColor == gameConnectionManager.mixColor {
                print("-----DONE-----")
                gameConnectionManager.resetConnection()
                try? await Task.sleep(nanoseconds: 100_000_000)
                self.gameWon = true
                gameConnectionManager.send(colorName: "won")
            } else if gameConnectionManager.gameWon {
                gameConnectionManager.resetConnection()
                try? await Task.sleep(nanoseconds: 100_000_000)
                self.gameWon = true
            }
            
            try? await Task.sleep(nanoseconds: 200_000_000)
        }
    }
    
    private func changeAsset(dragGesture: Int) async {
        if dragGesture == 1{
            erlen1 = asset_empty
        }else if dragGesture == 2{
            erlen2 = asset_empty
        }else if dragGesture == 3{
            erlen3 = asset_empty
        }else{
            print("function changeAsset not working")
        }
        
        try? await Task.sleep(nanoseconds: 1_000_000_000)
        
        if dragGesture == 1{
            erlen1 = asset1
        }else if dragGesture == 2{
            erlen2 = asset2
        }else if dragGesture == 3{
            erlen3 = asset3
        }else{
            print("function changeAsset not working")
        }
    }
    
    private func delayReset() async {
        gameConnectionManager.resetConnection()
        try? await Task.sleep(nanoseconds: 100_000_000)
    }
    
    private func delayStartScreen() async {
        gameConnectionManager.resetConnection()
        try? await Task.sleep(nanoseconds: 100_000_000)
        self.didQuit = true
    }
    
    private func delayAnimation() async {
        self.missed = true
        NotificationConfiguration.vibrate(type: .warning)
        try? await Task.sleep(nanoseconds: 1_000_000_000)
        self.missed = false
    }
    
    private func delayBacteria() async {
        let colors = ColorCodes()
        
        while(true) {
            currColor = colors.YELLOWpGREEN
            try? await Task.sleep(nanoseconds: 1_000_000_000)
            
            currColor = colors.YELLOWpORANGE
            try? await Task.sleep(nanoseconds: 1_000_000_000)
            
            currColor = colors.YELLOWpPURPLE
            try? await Task.sleep(nanoseconds: 1_000_000_000)
            
            currColor = colors.REDpGREEN
            try? await Task.sleep(nanoseconds: 1_000_000_000)
            
            currColor = colors.REDpORANGE
            try? await Task.sleep(nanoseconds: 1_000_000_000)
            
            currColor = colors.REDpPURPLE
            try? await Task.sleep(nanoseconds: 1_000_000_000)
            
            currColor = colors.BLUEpGREEN
            try? await Task.sleep(nanoseconds: 1_000_000_000)
            
            currColor = colors.BLUEpORANGE
            try? await Task.sleep(nanoseconds: 1_000_000_000)
            
            currColor = colors.BLUEpPURPLE
            try? await Task.sleep(nanoseconds: 1_000_000_000)
        }
    }
}

struct GameScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GameScreenView(player: 1)
            .environmentObject(GameConnectionManager())
    }
}


