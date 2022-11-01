//
//  BacteriaShapeView.swift
//  Gera
//
//  Created by matheusvb on 01/11/22.
//

import Foundation
import SwiftUI

struct BacteriaShapeView: View {
    let pathBounds = UIBezierPath.calculateBounds(paths: [.bac1path1, .bac1path2, .bac1path3, .bac1path4, .bac1path5, .bac1path6, .bac1path7, .bac1path8, .bac1path9, .bac1path10, .bac1path11, .bac1path12, .bac1path13, .bac1path14, .bac1path15, .bac1path16, .bac1path17, .bac1path18, .bac1path19, .bac1path20, .bac1path21, .bac1path22, .bac1path23, .bac1path24, .bac1path25, .bac1path26, .bac1path27, .bac1path28, .bac1path29, .bac1path30, .bac1path31, .bac1path32, .bac1path33, .bac1path34, .bac1path35, .bac1path36, .bac1path37, .bac1path38, .bac1path39, .bac1path40, .bac1path41, .bac1path42, .bac1path43, .bac1path44, .bac1path45, .bac1path46])
    
    let color: String
    
    var body: some View {
        ZStack{
            Group {
                ShapeView(bezier: .bac1path1, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path2, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path3, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path4, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path5, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path6, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path7, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path8, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path9, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path10, pathBounds: pathBounds).foregroundColor(Color(hex: color))
            }
            Group {
                ShapeView(bezier: .bac1path11, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path12, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path13, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path14, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path15, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path16, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path17, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path18, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path19, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path20, pathBounds: pathBounds).foregroundColor(Color(hex: color))
            }
            Group {
                ShapeView(bezier: .bac1path21, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path22, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path23, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path24, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path25, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path26, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path27, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path28, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path29, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path30, pathBounds: pathBounds).foregroundColor(Color(hex: color))
            }
            Group {
                ShapeView(bezier: .bac1path31, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path32, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path33, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path34, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path35, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path36, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path37, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path38, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path39, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path40, pathBounds: pathBounds).foregroundColor(Color(hex: color))
            }
            Group {
                ShapeView(bezier: .bac1path41, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path42, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path43, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path44, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path45, pathBounds: pathBounds).foregroundColor(Color(hex: color))
                ShapeView(bezier: .bac1path46, pathBounds: pathBounds).foregroundColor(Color(hex: color))
            }
            
            
        }
    }
}

struct BacteriaShapeView_Previews: PreviewProvider {
    static var previews: some View {
        GameScreenView(player: 1).environmentObject(GameConnectionManager())
    }
}
