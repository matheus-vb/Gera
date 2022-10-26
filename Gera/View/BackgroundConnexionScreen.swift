//
//  ConnexionScreen.swift
//  Gera
//
//  Created by ditthales on 25/10/22.
//

import SwiftUI

struct ConnexionScreenView: View{
    var body: some View{
        GeometryReader { geometry in
            ZStack(alignment: .center){
                BackgroundConnexionScreen()
                VStack{
                    Rectangle()
                    Buttons()
                }.frame(width: 306.13, height: geometry.size.height * 0.87 * 0.88)
                    .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.54)
            }
        }.edgesIgnoringSafeArea(.vertical)
    }
}

struct Buttons: View{
    @State var text: String = "Testinho"
    @State var spacing: CGFloat = 100
    @State var icon: String = "Add_Button"
    var body: some View{
        ZStack{
            Image("Frame_Grande")
            HStack(spacing: spacing){
                Text(text)
                Image(icon)
            }.frame(width: 264).background(.red)
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
        //.edgesIgnoringSafeArea(.vertical)
    }
}

//struct Clipboard: View {
//    var body: some View{
//        GeometryReader{ geometry in
//            ZStack{
//                GeometryReader{ zstack in
//                    Image("board")
//                        .resizable()
//                        .frame(width: .infinity, height: zstack.size.height * 0.9155)
//                        .position(x: zstack.size.width * 0.5, y: zstack.size.height * 0.5)
//                    Image("clip")
//                        .position(x: zstack.size.width * 0.5, y: 0)
//                }
//            }.position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.5)
//                .frame(width: 338.76, height: geometry.size.height * 0.87, alignment: .center)
//        }.edgesIgnoringSafeArea(.vertical)
//    }
//}

struct ConnexionScreen_Previews: PreviewProvider {
    static var previews: some View {
        ConnexionScreenView()
        //Clipboard()
    }
}
