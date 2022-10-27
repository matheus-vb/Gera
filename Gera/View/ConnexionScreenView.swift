//
//  ConnexionScreen.swift
//  Gera
//
//  Created by ditthales on 25/10/22.
//

import SwiftUI

struct ConnexionScreenView: View{
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View{
        GeometryReader { geometry in
            NavigationView{
                ZStack(alignment: .center){
                    BackgroundConnexionScreen()
                    VStack(alignment: .center){
                        HStack(){
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
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
                        Spacer()
                        Text("ESCOLHA SEU CIENTISTA PARCEIRO").font(.system(size: 24)).fontWeight(.medium).multilineTextAlignment(.center)
                        Spacer()
                        Button(action: {
                            print("d")
                        }) {
                            MyButton(text: "Criar Sala", icon: "Add_Button", isBig: true)
                        }
                        Spacer()
                        Button(action: {
                            print("d")
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
                    .padding(.vertical)
                    .frame(width: 306.13, height: geometry.size.height * 0.8)
                    .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.5)
                }
            }.navigationBarHidden(true)
                .edgesIgnoringSafeArea(.vertical)
        }.edgesIgnoringSafeArea(.vertical)
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
