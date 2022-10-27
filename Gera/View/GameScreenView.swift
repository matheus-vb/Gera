//
//  GameScreenView.swift
//  Gera
//
//  Created by matheusvb on 25/10/22.
//

import Foundation
import SwiftUI

struct Shake: GeometryEffect {
    var amount: CGFloat = 10
    var shakesPerUnit = 3
    var animatableData: CGFloat

    func effectValue(size: CGSize) -> ProjectionTransform {
        ProjectionTransform(CGAffineTransform(translationX:
            amount * sin(animatableData * .pi * CGFloat(shakesPerUnit)),
            y: 0))
    }
}


struct GameScreenView: View {
    
    @State var shake1 = false
    
    let location1: CGPoint = CGPoint(x: -150, y: 245)
    let location2: CGPoint = CGPoint(x: -75, y: 245)
    let location3: CGPoint = CGPoint(x: 0, y: 245)
    let location4: CGPoint = CGPoint(x: 75, y: 245)
    let location5: CGPoint = CGPoint(x: 150, y: 245)
    
    @State var offset1: CGPoint = CGPoint(x: -150, y: 245)
    @State var offset2: CGPoint = CGPoint(x: -75, y: 245)
    @State var offset3: CGPoint = CGPoint(x: 0, y: 245)
    @State var offset4: CGPoint = CGPoint(x: 75, y: 245)
    @State var offset5: CGPoint = CGPoint(x: 150, y: 245)
    
    @State var colorLeft: Color = Color(hex: "FFF")
    @State var colorRight: Color = Color(hex: "FFF")
    
    @GestureState var startLocation: CGPoint? = nil
    
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
                    let semaphore = DispatchSemaphore(value: 1)
                    
                    if value.location.y < 110 && value.location.y > -10 {
                        withAnimation(.linear(duration: 2)) {
                            self.colorLeft = Color(.purple)
                            semaphore.signal()
                        }
                    }
                    semaphore.wait()
                    
                    self.offset1 = location1
                    
                }
            }
    }
    
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
                    self.offset2 = location2
                }
            }
    }
    
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
                    self.offset3 = location3
                }
            }
    }
    
    var dragGesture4: some Gesture {
        DragGesture()
            .onChanged { value in
                var newLocation = startLocation ?? offset4 // 3
                newLocation.x += value.translation.width
                newLocation.y += value.translation.height
                withAnimation(.spring()) {
                    self.offset4 = newLocation
                }
            }.updating($startLocation) { (value, startLocation, transaction) in
                startLocation = startLocation ?? offset4 // 2
            }.onEnded { value in
                withAnimation(.spring()) {
                    self.offset4 = location4
                }
            }
    }
    
    var dragGesture5: some Gesture {
        DragGesture()
            .onChanged { value in
                var newLocation = startLocation ?? offset5 // 3
                newLocation.x += value.translation.width
                newLocation.y += value.translation.height
                withAnimation(.spring()) {
                    self.offset5 = newLocation
                }
            }.updating($startLocation) { (value, startLocation, transaction) in
                startLocation = startLocation ?? offset5 // 2
            }.onEnded { value in
                withAnimation(.spring()) {
                    self.offset5 = location5
                }
            }
    }
    
    var body: some View {
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
                    //config view
                }) {
                    Image("Config_Button")
                }.offset(x: 130, y: -300)
                Image("TEMPO")
                    .offset(x: -130, y: -300)
            }
            Group {
                Image("p2_cyan")
                    .offset(x: 150, y: -210)
                Image("p2_brown")
                    .offset(x: 75, y: -210)
                Image("p2_yellow")
                    .offset(x: 0, y: -210)
                Image("p2_lightGreen")
                    .offset(x: -75, y: -210)
                Image("p2_darkGreen")
                    .offset(x: -150, y: -210)
            }
            Group {
                Image("bacteria_PH")
                    .offset(y: 12)
                    
            }
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 208, height: 16)
                .foregroundColor(Color(hex: "FFF"))
                .offset(y: -85)
                .overlay {
                    Rectangle()
                        .frame(width: 104)
                        .offset(x: -52, y: -85)
                        .foregroundColor(colorLeft)
                    Rectangle()
                        .frame(width: 104)
                        .offset(x: 52, y: -85)
                        .foregroundColor(colorRight)
                }
            Group {
                Image("p1_purple")
                    .offset(CGSize(width: offset1.x, height: offset1.y))
                    .gesture(dragGesture1)
                
                Image("p1_orange")
                    .offset(CGSize(width: offset2.x, height: offset2.y))
                    .gesture(dragGesture2)
                
                Image("p1_red")
                    .offset(CGSize(width: offset3.x, height: offset3.y))
                    .gesture(dragGesture3)
                
                Image("p1_blue")
                    .offset(CGSize(width: offset4.x, height: offset4.y))
                    .gesture(dragGesture4)
                
                Image("p1_pink")
                    .offset(CGSize(width: offset5.x, height: offset5.y))
                    .gesture(dragGesture5)
                
            }
        }
    }
    
    func waitTime() async {
        try? await Task.sleep(nanoseconds: 1000)
    }
    
}

struct GameScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GameScreenView()
    }
}


