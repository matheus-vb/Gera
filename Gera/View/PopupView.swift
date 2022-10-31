//
//  PopupView.swift
//  Gera
//
//  Created by acrn on 27/10/22.
//

import SwiftUI

struct Congratulations: View {
    var time: String = "01:01"
    var body: some View {
        NavigationView(){
            ZStack {
                Image("Partida6")
                Rectangle()
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.5)
                
                Image("congrats")
                    .offset(y:-50)
                Text("Vocês salvaram o mundo em:")
                    .multilineTextAlignment(.center)
                    .offset(y:-60)
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .frame(width: 171)
                Text(time)
                    .offset(y: 20)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                NavigationLink (destination: StartScreenView(), label: {
                    Image("buttonHome")
                })
                .offset(x: -80, y: 124)
                
                Button(action: {
                    // colocar uma navigation link
                }) {
                    Image("buttonReload")
                    
                }.offset(x: 80, y: 124)
                
            }
        }
        }
}
//struct BlurView: UIViewRepresentable {
//
//    func makeUIView(context: Context) -> UIVisualEffectView {
//        let view = UIVisualEffectView(effect: UIBlurEffect(style: .regular))
//
//
//        return view
//
//    }
//
//    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
//
//    }
//}

struct Congratulations_Previews: PreviewProvider {
    static var previews: some View {
        Congratulations()
    }
}
