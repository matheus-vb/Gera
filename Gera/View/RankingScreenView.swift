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
                        VStack(spacing:0){
                            Text("RANKING")
                                .font(.system(size: 24))
                                .fontWeight(.medium)
                            
                            
                            VStack(spacing: 0){
                                Image("ranking")
                                
                                
                                
                                List{
                                    ForEach(0..<RankingData.rankingList.count) {index in
                                        VStack{
                                            HStack{
                                                VStack(alignment: .leading){
                                                    Text("\(RankingData.rankingList[index].player)")
                                                        .font(.system(size: 14))
                                                        .fontWeight(.light)
                                                        .multilineTextAlignment(.leading)
                                                    
                                                    Text("Melhor tempo: \(RankingData.rankingList[index].matchTime) segundos")
                                                        .font(.system(size: 12))
                                                        .fontWeight(.light)
                                                        .multilineTextAlignment(.leading)
                                                }
                                                .frame(height: 66)
                                                Spacer()
                                                
                                                Text("\(index+1)°")
                                                    .font(.system(size: 32))
                                                    .foregroundColor(Color(hex: "ACACAC"))
                                                
                                            }
                                            
                                            
                                            Rectangle()
                                                .frame(width: 275)
                                                .frame(height: 4)
                                                .foregroundColor(Color(hex: "D8D8D8"))
                                            
                                        }
                                        .listRowBackground(Color(hex: "F5F5F5"))
                                        .listRowSeparator(.hidden)
                                    }
                                }
                                .border(Color(hex: "D8D8D8"), width: 4)
                                .listStyle(.plain)
                                .scrollIndicators(.hidden)
                                .frame(width: 304, height: .infinity)
                                
                                
                            }.padding()
                            
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
    
    func rankMyMatch(playerName: String, gametime: Int){
        
        var rankable: (String, Int)
        rankable.0 = playerName
        rankable.1 = gametime
        
        if RankingData.rankingList.count < 10{
            RankingData.rankingList.append(rankable)
            RankingData.rankingList = RankingData.rankingList.sorted(by: {$0.1 < $1.1})
        }
        else {
            if gametime < RankingData.rankingList.last!.matchTime {
                
                RankingData.rankingList.removeLast()
                RankingData.rankingList.append(rankable)
                RankingData.rankingList = RankingData.rankingList.sorted(by: {$0.1 < $1.1})
            }
            else{
                //simplesmente não reaja
            }
        }
        

        
    }
    

}
    
    struct RankingScreen_Previews: PreviewProvider {
        static var previews: some View {
            RankingScreenView()
        }
    }
