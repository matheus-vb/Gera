//
//  HelpScreenView.swift
//  Gera
//
//  Created by egln on 27/10/22.
//

import SwiftUI

struct HelpScreenView: View{
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



struct HelpScreen_Previews: PreviewProvider {
    static var previews: some View {
        HelpScreenView()
    }
}
