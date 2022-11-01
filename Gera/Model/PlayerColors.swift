//
//  PlayerOneColors.swift
//  Gera
//
//  Created by matheusvb on 27/10/22.
//

import Foundation
import SwiftUI

struct PlayerColors {
    let player: Int
    
    let colorCodes: ColorCodes
    
    let color1: String
    let color2: String
    let color3: String
    let color4: String
    let color5: String
    
    init(player: Int) {
        colorCodes = ColorCodes()
       
        self.player = player
        
        if player == 1 {
            color1 = colorCodes.YELLOW
            color2 = colorCodes.RED
            color3 = colorCodes.BLUE
            color4 = colorCodes.BLUE
            color5 = colorCodes.PINK
        } else if player == 2 {
            color1 = colorCodes.ORANGE
            color2 = colorCodes.DARK_GREEN
            color3 = colorCodes.PURPLE
            color4 = colorCodes.BROWN
            color5 = colorCodes.CYAN
        } else {
            color1 = ""
            color2 = ""
            color3 = ""
            color4 = ""
            color5 = ""
        }
    }
    
}
