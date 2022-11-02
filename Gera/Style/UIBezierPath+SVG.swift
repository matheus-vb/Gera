//
//  UIBezierPath+SVG.swift
//  Gera
//
//  Created by matheusvb on 01/11/22.
//

import UIKit

extension UIBezierPath {
    static func calculateBounds(paths: [UIBezierPath]) -> CGRect {
        let myPaths = UIBezierPath()
        for path in paths {
            myPaths.append(path)
        }
        return (myPaths.bounds)
    }
    
    
    
}
