//
//  StartScreenView.swift
//  Gera
//
//  Created by matheusvb on 24/10/22.
//

import Foundation
import SwiftUI

struct StartScreenView: View {
    
    var body: some View {
        NavigationView() {
            VStack {
                NavigationLink(destination: ConnectScreenView(), label: {Text("Start game")})
            }
        }
    }
}
