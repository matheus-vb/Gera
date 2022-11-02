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
                        
                        
                        VStack{
                            Text("O Destino da Humanidade Está em suas Mãos")
                                .font(.system(size: 24))
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                                .frame(width: 300, height: 70)
                            Spacer()
                            
                            Text("Salve a humanidade de uma terrível **bactéria** em **30 segundos**")
                                .font(.system(size: 14))
                               .multilineTextAlignment(.center)
                               .frame(width: 250, height: 40)
                            Spacer()
                            
                            Image("Foto_Bacteria")
                        }
                        
                        VStack{
                            Text("Você e seu cientista parceiro devem misturar compostos para descobrir o antibiótico correto.")
                                .font(.system(size: 14))
                                .multilineTextAlignment(.leading)
                                .frame(width: 250, height: 60)
                            Spacer()
                            
                            Image("Foto_Ajuda")
                                .frame(width: 100, height: 100)
                        
                        
                        
                            Text("Atentem-se ao **tempo**, boa sorte cientistas!")
                                .font(.system(size: 14))
                                .multilineTextAlignment(.center)
                                .frame(width: 250, height: 60)
                            Spacer()
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



struct HelpScreen_Previews: PreviewProvider {
    static var previews: some View {
        HelpScreenView()
    }
}
