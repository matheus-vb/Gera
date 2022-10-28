//
//  RankingScreen.swift
//  Gera
//
//  Created by egln on 27/10/22.
//


import SwiftUI

struct RankingScreenView: View{
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
//
                        VStack{
                            Text("RANKING")
                                .font(.system(size: 24))
                                .fontWeight(.medium)
                            VStack{
                                Image("ranking")
                                
                                List{
                                    ForEach(0..<30) {list in
                                        ZStack{
                                            
                                            Image("ranking_rect")
                                            // .resizable()
                                                .frame(height: .infinity)
                                            
                                            HStack{
                                                VStack{
                                                    Text("nome do celular")
                                                        .font(.system(size: 14))
                                                        .fontWeight(.light)
                                                        .multilineTextAlignment(.center)
                                                    Text("vc terminou em X segundos")
                                                        .font(.system(size: 14))
                                                        .fontWeight(.light)
                                                        .multilineTextAlignment(.leading)
                                                }.frame(height: 66)
                                                Spacer()
                                                Image("First_Ranking")
                                            }
                                        }.padding(-1)
                                    }
                                }
                                .frame(width: .infinity, height: .infinity)
                                .navigationViewStyle(StackNavigationViewStyle())
                                .scrollIndicators(.hidden)
                                .frame(width: 306)
                                
                            }.padding(-1)
                        }
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



struct RankingScreen_Previews: PreviewProvider {
    static var previews: some View {
        RankingScreenView()
    }
}
