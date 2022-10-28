//
//  ConnexionScreen.swift
//  Gera
//
//  Created by ditthales on 25/10/22.
//

import SwiftUI

struct ConnexionScreenView: View{
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @ObservedObject private var gameConnectionManager = GameConnectionManager()
    @State var isHost = false
    @State var isLoadingHidden: Bool = true
    let aguardando = ["Aguardando seu companheiro.",
                      "Aguardando seu companheiro..",
                      "Aguardando seu companheiro..."]
    @State var count: Int = 2
    var body: some View{
        GeometryReader { geometry in
            NavigationView{
                ZStack(alignment: .center){
                    BackgroundConnexionScreen()
                    VStack(alignment: .center){
                        HStack(){
                            Button(action: {
                                if isLoadingHidden{
                                    presentationMode.wrappedValue.dismiss()
                                }else{
                                    isLoadingHidden = true
                                }
                                
                            }) {
                                Image("Back_Button")
                            }
                            Spacer()
                            Button(action: {
                                print("d")
                            }) {
                                Image("Sound_Button")
                            }
                        }
                        .padding(.horizontal)
                        Group{
                            Spacer()
                            Text("ESCOLHA SEU CIENTISTA PARCEIRO").font(.system(size: 24)).fontWeight(.medium).multilineTextAlignment(.center)
                            Spacer()
                            Group{
                                Button(action: {
                                    print("d")
                                    isLoadingHidden = false
                                    self.isHost = true
                                    gameConnectionManager.hostGame()
                                }) {
                                    MyButton(text: "Criar Sala", icon: "Add_Button", isBig: true)
                                }
                                Spacer()
                                Button(action: {
                                    print("d")
                                    gameConnectionManager.joinGame()
                                    gameConnectionManager.printDevices()
                                }) {
                                    MyButton(text: "Selecionar Parceiro", icon: "Find_Button", isBig: true)
                                }
                                Spacer()
                                Button(action: {
                                    print("d")
                                }) {
                                    MyButton(text: "Ranking", icon: "Rank_Button", isBig: false)
                                }
                                Spacer()
                            }
                        }.isHidden(!isLoadingHidden, remove: !isLoadingHidden)
                        Group{
                            Text("Você está hospedando a sala").font(.system(size: 24)).fontWeight(.medium).multilineTextAlignment(.center).lineLimit(2).padding(.top)
                            Spacer()
                            Text(aguardando[count])
                                .onAppear{
                                    count = 0
                                }
                                .onChange(of: count) { value in
                                    updateText()
                                }
                            Spacer()
                            Spacer()
                        }.isHidden(isLoadingHidden, remove: isLoadingHidden)
                    }
                    .padding(.vertical)
                    .frame(width: 306.13, height: geometry.size.height * 0.75)
                    .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.5)
                }
            }.navigationBarHidden(true)
                .edgesIgnoringSafeArea(.vertical)
        }.edgesIgnoringSafeArea(.vertical)
        NavigationLink(destination: GameScreenView(player: isHost ? 1 : 2).environmentObject(gameConnectionManager), isActive: $gameConnectionManager.connectedToGame) {
            EmptyView()
        }
    }
    
    func updateText(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
            if count == 0 || count == 1{
                count += 1
            }else{
                count = 0
            }
        }
    }
}

struct MyButton: View{
    @State var text: String = "Testinho"
    @State var icon: String = "Add_Button"
    @State var isBig: Bool = true
    
    var body: some View{
        ZStack{
            Image({isBig ? "Frame_Grande" : "Frame_PEQUENO"}())
            HStack{
                Text(text).font(.system(size: 16)).foregroundColor(Color.black)
                Spacer()
                Image(icon)
            }.padding(.horizontal).frame(width: 264)
        }
    }
}

struct BackgroundConnexionScreen: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                Color(hex: "4BB9F4")
                    .ignoresSafeArea()
                Rectangle()
                    .frame(width: geometry.size.width, height: geometry.size.height * 0.9)
                    .ignoresSafeArea()
                    .foregroundColor(Color(hex: "112F55"))
                    .position(x: geometry.size.width * 0.5 , y: geometry.size.height * 0.55)
                Image("stripes")
                    .ignoresSafeArea()
                    .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.055)
                VStack{
                    Clipboard()
                }.frame(width: 338.76, height: geometry.size.height * 0.87)
                VStack{
                    
                }.frame(width: 306.13, height: geometry.size.height * 0.87 * 0.88)
                    .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.54)
                

            }
            
        }.edgesIgnoringSafeArea(.vertical)
    }
}

struct Clipboard: View {
    var body: some View{
        GeometryReader { geometry in
            VStack{
                Image("clip")
                    .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.055)
                    .zIndex(1)
                Image("board")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height * 0.9155)
            }
            .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.5)
        }
    }
}

struct ConnexionScreen_Previews: PreviewProvider {
    static var previews: some View {
        ConnexionScreenView()
    }
}

extension View {
    /// Hide or show the view based on a boolean value.
    ///
    /// Example for visibility:
    ///
    ///     Text("Label")
    ///         .isHidden(true)
    ///
    /// Example for complete removal:
    ///
    ///     Text("Label")
    ///         .isHidden(true, remove: true)
    ///
    /// - Parameters:
    ///   - hidden: Set to `false` to show the view. Set to `true` to hide the view.
    ///   - remove: Boolean value indicating whether or not to remove the view.
    @ViewBuilder func isHidden(_ hidden: Bool, remove: Bool = false) -> some View {
        if hidden {
            if !remove {
                self.hidden()
            }
        } else {
            self
        }
    }
}
