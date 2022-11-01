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
    
    static var bac1path1: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 26.8, y: 65.2))
        path.addCurve(to: CGPoint(x: 26.8, y: 58.4), controlPoint1: CGPoint(x: 27.8, y: 63.8), controlPoint2: CGPoint(x: 27.2, y: 60.1))
        path.addLine(to: CGPoint(x: 32.8, y: 61.1))
        path.addCurve(to: CGPoint(x: 29.6, y: 65.7), controlPoint1: CGPoint(x: 32, y: 62.1), controlPoint2: CGPoint(x: 30.3, y: 64.4))
        path.addCurve(to: CGPoint(x: 29.6, y: 71.9), controlPoint1: CGPoint(x: 28.7, y: 67.4), controlPoint2: CGPoint(x: 32.6, y: 71.6))
        path.addCurve(to: CGPoint(x: 23.6, y: 70.4), controlPoint1: CGPoint(x: 26.6, y: 72.3), controlPoint2: CGPoint(x: 24.4, y: 71))
        path.addCurve(to: CGPoint(x: 23.6, y: 68.7), controlPoint1: CGPoint(x: 23, y: 70), controlPoint2: CGPoint(x: 23.4, y: 69.1))
        path.addCurve(to: CGPoint(x: 26.8, y: 65.2), controlPoint1: CGPoint(x: 24.2, y: 68.1), controlPoint2: CGPoint(x: 25.7, y: 66.5))
        path.close()
        return path
    }
    
    static var bac1path2: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 26.8, y: 65.2))
        path.addCurve(to: CGPoint(x: 26.8, y: 58.4), controlPoint1: CGPoint(x: 27.8, y: 63.8), controlPoint2: CGPoint(x: 27.2, y: 60.1))
        path.addLine(to: CGPoint(x: 32.8, y: 61.1))
        path.addCurve(to: CGPoint(x: 29.6, y: 65.7), controlPoint1: CGPoint(x: 32, y: 62.1), controlPoint2: CGPoint(x: 30.3, y: 64.4))
        path.addCurve(to: CGPoint(x: 29.6, y: 71.9), controlPoint1: CGPoint(x: 28.7, y: 67.4), controlPoint2: CGPoint(x: 32.6, y: 71.6))
        path.addCurve(to: CGPoint(x: 23.6, y: 70.4), controlPoint1: CGPoint(x: 26.6, y: 72.3), controlPoint2: CGPoint(x: 24.4, y: 71))
        path.addCurve(to: CGPoint(x: 23.6, y: 68.7), controlPoint1: CGPoint(x: 23, y: 70), controlPoint2: CGPoint(x: 23.4, y: 69.1))
        path.addCurve(to: CGPoint(x: 26.8, y: 65.2), controlPoint1: CGPoint(x: 24.2, y: 68.1), controlPoint2: CGPoint(x: 25.7, y: 66.5))
        path.close()
        return path
    }
    
    static var bac1path3: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 28, y: 66.9))
        path.addCurve(to: CGPoint(x: 29.8, y: 60.5), controlPoint1: CGPoint(x: 28, y: 66.3), controlPoint2: CGPoint(x: 29, y: 62.1))
        path.addLine(to: CGPoint(x: 32.8, y: 61.1))
        path.addCurve(to: CGPoint(x: 29.4, y: 66.1), controlPoint1: CGPoint(x: 31.8, y: 62.3), controlPoint2: CGPoint(x: 29.7, y: 65.1))
        path.addCurve(to: CGPoint(x: 30.8, y: 70.8), controlPoint1: CGPoint(x: 29.1, y: 67.4), controlPoint2: CGPoint(x: 30.9, y: 69.3))
        path.addCurve(to: CGPoint(x: 29.1, y: 71.9), controlPoint1: CGPoint(x: 30.6, y: 72), controlPoint2: CGPoint(x: 29.6, y: 72.1))
        path.addCurve(to: CGPoint(x: 29.8, y: 71.4), controlPoint1: CGPoint(x: 29.2, y: 71.9), controlPoint2: CGPoint(x: 29.5, y: 71.8))
        path.addCurve(to: CGPoint(x: 28, y: 66.9), controlPoint1: CGPoint(x: 30.2, y: 70.8), controlPoint2: CGPoint(x: 28, y: 67.6))
        path.close()
        return path
    }
    
    static var bac1path4: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 23.8, y: 69.5))
        path.addCurve(to: CGPoint(x: 25.2, y: 68.2), controlPoint1: CGPoint(x: 23.7, y: 69), controlPoint2: CGPoint(x: 24.7, y: 68.4))
        path.addLine(to: CGPoint(x: 24.6, y: 69.3))
        path.addCurve(to: CGPoint(x: 25, y: 70.1), controlPoint1: CGPoint(x: 24.4, y: 69.7), controlPoint2: CGPoint(x: 25.2, y: 69.7))
        path.addCurve(to: CGPoint(x: 23.8, y: 69.5), controlPoint1: CGPoint(x: 24.8, y: 70.4), controlPoint2: CGPoint(x: 24, y: 70.1))
        path.close()
        return path
    }
    
    static var bac1path5: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 41.4, y: 63.9))
        path.addCurve(to: CGPoint(x: 38.4, y: 59.6), controlPoint1: CGPoint(x: 41.5, y: 62.6), controlPoint2: CGPoint(x: 39.4, y: 60.5))
        path.addLine(to: CGPoint(x: 43.4, y: 58.6))
        path.addCurve(to: CGPoint(x: 43.4, y: 63), controlPoint1: CGPoint(x: 43.3, y: 59.6), controlPoint2: CGPoint(x: 43.3, y: 61.8))
        path.addCurve(to: CGPoint(x: 46.2, y: 66.9), controlPoint1: CGPoint(x: 43.6, y: 64.5), controlPoint2: CGPoint(x: 47.9, y: 65.4))
        path.addCurve(to: CGPoint(x: 41.7, y: 68.6), controlPoint1: CGPoint(x: 44.4, y: 68.5), controlPoint2: CGPoint(x: 42.4, y: 68.6))
        path.addCurve(to: CGPoint(x: 41, y: 67.5), controlPoint1: CGPoint(x: 41.1, y: 68.6), controlPoint2: CGPoint(x: 41, y: 67.9))
        path.addCurve(to: CGPoint(x: 41.4, y: 63.9), controlPoint1: CGPoint(x: 41.1, y: 66.9), controlPoint2: CGPoint(x: 41.3, y: 65.2))
        path.close()
        return path
    }
    
    static var bac1path6: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 41.4, y: 63.9))
        path.addCurve(to: CGPoint(x: 38.4, y: 59.6), controlPoint1: CGPoint(x: 41.5, y: 62.6), controlPoint2: CGPoint(x: 39.4, y: 60.5))
        path.addLine(to: CGPoint(x: 43.4, y: 58.6))
        path.addCurve(to: CGPoint(x: 43.4, y: 63), controlPoint1: CGPoint(x: 43.3, y: 59.6), controlPoint2: CGPoint(x: 43.3, y: 61.8))
        path.addCurve(to: CGPoint(x: 46.2, y: 66.9), controlPoint1: CGPoint(x: 43.6, y: 64.5), controlPoint2: CGPoint(x: 47.9, y: 65.4))
        path.addCurve(to: CGPoint(x: 41.7, y: 68.6), controlPoint1: CGPoint(x: 44.4, y: 68.5), controlPoint2: CGPoint(x: 42.4, y: 68.6))
        path.addCurve(to: CGPoint(x: 41, y: 67.5), controlPoint1: CGPoint(x: 41.1, y: 68.6), controlPoint2: CGPoint(x: 41, y: 67.9))
        path.addCurve(to: CGPoint(x: 41.4, y: 63.9), controlPoint1: CGPoint(x: 41.1, y: 66.9), controlPoint2: CGPoint(x: 41.3, y: 65.2))
        path.close()
        return path
    }
    
    static var bac1path7: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 58.9, y: 51.4))
        path.addCurve(to: CGPoint(x: 53.7, y: 51.4), controlPoint1: CGPoint(x: 57.9, y: 50.6), controlPoint2: CGPoint(x: 55, y: 51.1))
        path.addLine(to: CGPoint(x: 55.8, y: 46.8))
        path.addCurve(to: CGPoint(x: 59.4, y: 49.3), controlPoint1: CGPoint(x: 56.5, y: 47.4), controlPoint2: CGPoint(x: 58.3, y: 48.7))
        path.addCurve(to: CGPoint(x: 64.1, y: 49.3), controlPoint1: CGPoint(x: 60.7, y: 50), controlPoint2: CGPoint(x: 63.9, y: 46.9))
        path.addCurve(to: CGPoint(x: 63, y: 53.9), controlPoint1: CGPoint(x: 64.4, y: 51.6), controlPoint2: CGPoint(x: 63.4, y: 53.3))
        path.addCurve(to: CGPoint(x: 61.7, y: 53.9), controlPoint1: CGPoint(x: 62.6, y: 54.4), controlPoint2: CGPoint(x: 62, y: 54.1))
        path.addCurve(to: CGPoint(x: 58.9, y: 51.4), controlPoint1: CGPoint(x: 61.2, y: 53.4), controlPoint2: CGPoint(x: 60, y: 52.3))
        path.close()
        return path
    }
    
    static var bac1path8: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 58.9, y: 51.4))
        path.addCurve(to: CGPoint(x: 53.7, y: 51.4), controlPoint1: CGPoint(x: 57.9, y: 50.6), controlPoint2: CGPoint(x: 55, y: 51.1))
        path.addLine(to: CGPoint(x: 55.8, y: 46.8))
        path.addCurve(to: CGPoint(x: 59.4, y: 49.3), controlPoint1: CGPoint(x: 56.5, y: 47.4), controlPoint2: CGPoint(x: 58.3, y: 48.7))
        path.addCurve(to: CGPoint(x: 64.1, y: 49.3), controlPoint1: CGPoint(x: 60.7, y: 50), controlPoint2: CGPoint(x: 63.9, y: 46.9))
        path.addCurve(to: CGPoint(x: 63, y: 53.9), controlPoint1: CGPoint(x: 64.4, y: 51.6), controlPoint2: CGPoint(x: 63.4, y: 53.3))
        path.addCurve(to: CGPoint(x: 61.7, y: 53.9), controlPoint1: CGPoint(x: 62.6, y: 54.4), controlPoint2: CGPoint(x: 62, y: 54.1))
        path.addCurve(to: CGPoint(x: 58.9, y: 51.4), controlPoint1: CGPoint(x: 61.2, y: 53.4), controlPoint2: CGPoint(x: 60, y: 52.3))
        path.close()
        return path
    }
    
    static var bac1path9: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 62, y: 30.7))
        path.addCurve(to: CGPoint(x: 57.5, y: 33.3), controlPoint1: CGPoint(x: 60.7, y: 30.5), controlPoint2: CGPoint(x: 58.5, y: 32.4))
        path.addLine(to: CGPoint(x: 57, y: 28.3))
        path.addCurve(to: CGPoint(x: 61.3, y: 28.6), controlPoint1: CGPoint(x: 57.9, y: 28.4), controlPoint2: CGPoint(x: 60.1, y: 28.6))
        path.addCurve(to: CGPoint(x: 65.5, y: 26.2), controlPoint1: CGPoint(x: 62.8, y: 28.6), controlPoint2: CGPoint(x: 64.1, y: 24.3))
        path.addCurve(to: CGPoint(x: 66.8, y: 30.8), controlPoint1: CGPoint(x: 66.9, y: 28.1), controlPoint2: CGPoint(x: 66.9, y: 30.1))
        path.addCurve(to: CGPoint(x: 65.6, y: 31.5), controlPoint1: CGPoint(x: 66.7, y: 31.4), controlPoint2: CGPoint(x: 66, y: 31.5))
        path.addCurve(to: CGPoint(x: 62, y: 30.7), controlPoint1: CGPoint(x: 65, y: 31.3), controlPoint2: CGPoint(x: 63.3, y: 30.9))
        path.close()
        return path
    }
    
    static var bac1path10: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 62, y: 30.7))
        path.addCurve(to: CGPoint(x: 57.5, y: 33.3), controlPoint1: CGPoint(x: 60.7, y: 30.5), controlPoint2: CGPoint(x: 58.5, y: 32.4))
        path.addLine(to: CGPoint(x: 57, y: 28.3))
        path.addCurve(to: CGPoint(x: 61.3, y: 28.6), controlPoint1: CGPoint(x: 57.9, y: 28.4), controlPoint2: CGPoint(x: 60.1, y: 28.6))
        path.addCurve(to: CGPoint(x: 65.5, y: 26.2), controlPoint1: CGPoint(x: 62.8, y: 28.6), controlPoint2: CGPoint(x: 64.1, y: 24.3))
        path.addCurve(to: CGPoint(x: 66.8, y: 30.8), controlPoint1: CGPoint(x: 66.9, y: 28.1), controlPoint2: CGPoint(x: 66.9, y: 30.1))
        path.addCurve(to: CGPoint(x: 65.6, y: 31.5), controlPoint1: CGPoint(x: 66.7, y: 31.4), controlPoint2: CGPoint(x: 66, y: 31.5))
        path.addCurve(to: CGPoint(x: 62, y: 30.7), controlPoint1: CGPoint(x: 65, y: 31.3), controlPoint2: CGPoint(x: 63.3, y: 30.9))
        path.close()
        return path
    }
    
    static var bac1path11: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 47.6, y: 12.9))
        path.addCurve(to: CGPoint(x: 47.6, y: 18.1), controlPoint1: CGPoint(x: 46.8, y: 13.9), controlPoint2: CGPoint(x: 47.3, y: 16.8))
        path.addLine(to: CGPoint(x: 43, y: 16.1))
        path.addCurve(to: CGPoint(x: 45.5, y: 12.5), controlPoint1: CGPoint(x: 43.6, y: 15.3), controlPoint2: CGPoint(x: 44.9, y: 13.5))
        path.addCurve(to: CGPoint(x: 45.5, y: 7.7), controlPoint1: CGPoint(x: 46.2, y: 11.1), controlPoint2: CGPoint(x: 43.1, y: 8))
        path.addCurve(to: CGPoint(x: 50.1, y: 8.8), controlPoint1: CGPoint(x: 47.8, y: 7.4), controlPoint2: CGPoint(x: 49.5, y: 8.4))
        path.addCurve(to: CGPoint(x: 50.1, y: 10.1), controlPoint1: CGPoint(x: 50.5, y: 9.2), controlPoint2: CGPoint(x: 50.3, y: 9.8))
        path.addCurve(to: CGPoint(x: 47.6, y: 12.9), controlPoint1: CGPoint(x: 49.6, y: 10.6), controlPoint2: CGPoint(x: 48.4, y: 11.8))
        path.close()
        return path
    }

    static var bac1path12: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 47.6, y: 12.9))
        path.addCurve(to: CGPoint(x: 47.6, y: 18.1), controlPoint1: CGPoint(x: 46.8, y: 13.9), controlPoint2: CGPoint(x: 47.3, y: 16.8))
        path.addLine(to: CGPoint(x: 43, y: 16.1))
        path.addCurve(to: CGPoint(x: 45.5, y: 12.5), controlPoint1: CGPoint(x: 43.6, y: 15.3), controlPoint2: CGPoint(x: 44.9, y: 13.5))
        path.addCurve(to: CGPoint(x: 45.5, y: 7.7), controlPoint1: CGPoint(x: 46.2, y: 11.1), controlPoint2: CGPoint(x: 43.1, y: 8))
        path.addCurve(to: CGPoint(x: 50.1, y: 8.8), controlPoint1: CGPoint(x: 47.8, y: 7.4), controlPoint2: CGPoint(x: 49.5, y: 8.4))
        path.addCurve(to: CGPoint(x: 50.1, y: 10.1), controlPoint1: CGPoint(x: 50.5, y: 9.2), controlPoint2: CGPoint(x: 50.3, y: 9.8))
        path.addCurve(to: CGPoint(x: 47.6, y: 12.9), controlPoint1: CGPoint(x: 49.6, y: 10.6), controlPoint2: CGPoint(x: 48.4, y: 11.8))
        path.close()
        return path
    }
    
    static var bac1path13: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 24.2, y: 12.7))
        path.addCurve(to: CGPoint(x: 27.8, y: 16.4), controlPoint1: CGPoint(x: 24.3, y: 14), controlPoint2: CGPoint(x: 26.7, y: 15.7))
        path.addLine(to: CGPoint(x: 23.1, y: 18.2))
        path.addCurve(to: CGPoint(x: 22.3, y: 13.9), controlPoint1: CGPoint(x: 23, y: 17.3), controlPoint2: CGPoint(x: 22.6, y: 15.1))
        path.addCurve(to: CGPoint(x: 18.9, y: 10.5), controlPoint1: CGPoint(x: 21.9, y: 12.5), controlPoint2: CGPoint(x: 17.5, y: 12.4))
        path.addCurve(to: CGPoint(x: 23, y: 8.1), controlPoint1: CGPoint(x: 20.4, y: 8.7), controlPoint2: CGPoint(x: 22.3, y: 8.2))
        path.addCurve(to: CGPoint(x: 23.9, y: 9), controlPoint1: CGPoint(x: 23.6, y: 8), controlPoint2: CGPoint(x: 23.9, y: 8.7))
        path.addCurve(to: CGPoint(x: 24.2, y: 12.7), controlPoint1: CGPoint(x: 23.9, y: 9.7), controlPoint2: CGPoint(x: 24, y: 11.4))
        path.close()
        return path
    }
    
    static var bac1path14: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 24.2, y: 12.7))
        path.addCurve(to: CGPoint(x: 27.8, y: 16.4), controlPoint1: CGPoint(x: 24.3, y: 14), controlPoint2: CGPoint(x: 26.7, y: 15.7))
        path.addLine(to: CGPoint(x: 23.1, y: 18.2))
        path.addCurve(to: CGPoint(x: 22.3, y: 13.9), controlPoint1: CGPoint(x: 23, y: 17.3), controlPoint2: CGPoint(x: 22.6, y: 15.1))
        path.addCurve(to: CGPoint(x: 18.9, y: 10.5), controlPoint1: CGPoint(x: 21.9, y: 12.5), controlPoint2: CGPoint(x: 17.5, y: 12.4))
        path.addCurve(to: CGPoint(x: 23, y: 8.1), controlPoint1: CGPoint(x: 20.4, y: 8.7), controlPoint2: CGPoint(x: 22.3, y: 8.2))
        path.addCurve(to: CGPoint(x: 23.9, y: 9), controlPoint1: CGPoint(x: 23.6, y: 8), controlPoint2: CGPoint(x: 23.9, y: 8.7))
        path.addCurve(to: CGPoint(x: 24.2, y: 12.7), controlPoint1: CGPoint(x: 23.9, y: 9.7), controlPoint2: CGPoint(x: 24, y: 11.4))
        path.close()
        return path
    }
    
    static var bac1path15: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 9.1, y: 32.4))
        path.addCurve(to: CGPoint(x: 14.2, y: 31.1), controlPoint1: CGPoint(x: 10.3, y: 32.9), controlPoint2: CGPoint(x: 13, y: 31.7))
        path.addLine(to: CGPoint(x: 13.4, y: 36.1))
        path.addCurve(to: CGPoint(x: 9.3, y: 34.6), controlPoint1: CGPoint(x: 12.5, y: 35.7), controlPoint2: CGPoint(x: 10.4, y: 34.9))
        path.addCurve(to: CGPoint(x: 4.7, y: 35.9), controlPoint1: CGPoint(x: 7.8, y: 34.3), controlPoint2: CGPoint(x: 5.5, y: 38))
        path.addCurve(to: CGPoint(x: 4.6, y: 31.1), controlPoint1: CGPoint(x: 3.8, y: 33.7), controlPoint2: CGPoint(x: 4.3, y: 31.8))
        path.addCurve(to: CGPoint(x: 5.8, y: 30.7), controlPoint1: CGPoint(x: 4.8, y: 30.5), controlPoint2: CGPoint(x: 5.5, y: 30.6))
        path.addCurve(to: CGPoint(x: 9.1, y: 32.4), controlPoint1: CGPoint(x: 6.4, y: 31.1), controlPoint2: CGPoint(x: 7.9, y: 31.9))
        path.close()
        return path
    }
    
    static var bac1path16: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 9.1, y: 32.4))
        path.addCurve(to: CGPoint(x: 14.2, y: 31.1), controlPoint1: CGPoint(x: 10.3, y: 32.9), controlPoint2: CGPoint(x: 13, y: 31.7))
        path.addLine(to: CGPoint(x: 13.4, y: 36.1))
        path.addCurve(to: CGPoint(x: 9.3, y: 34.6), controlPoint1: CGPoint(x: 12.5, y: 35.7), controlPoint2: CGPoint(x: 10.4, y: 34.9))
        path.addCurve(to: CGPoint(x: 4.7, y: 35.9), controlPoint1: CGPoint(x: 7.8, y: 34.3), controlPoint2: CGPoint(x: 5.5, y: 38))
        path.addCurve(to: CGPoint(x: 4.6, y: 31.1), controlPoint1: CGPoint(x: 3.8, y: 33.7), controlPoint2: CGPoint(x: 4.3, y: 31.8))
        path.addCurve(to: CGPoint(x: 5.8, y: 30.7), controlPoint1: CGPoint(x: 4.8, y: 30.5), controlPoint2: CGPoint(x: 5.5, y: 30.6))
        path.addCurve(to: CGPoint(x: 9.1, y: 32.4), controlPoint1: CGPoint(x: 6.4, y: 31.1), controlPoint2: CGPoint(x: 7.9, y: 31.9))
        path.close()
        return path
    }
    
    static var bac1path17: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 15.4, y: 55.7))
        path.addCurve(to: CGPoint(x: 18, y: 51.2), controlPoint1: CGPoint(x: 16.6, y: 55.2), controlPoint2: CGPoint(x: 17.7, y: 52.5))
        path.addLine(to: CGPoint(x: 21, y: 55.2))
        path.addCurve(to: CGPoint(x: 17.1, y: 57.2), controlPoint1: CGPoint(x: 20.1, y: 55.6), controlPoint2: CGPoint(x: 18.1, y: 56.5))
        path.addCurve(to: CGPoint(x: 14.7, y: 61.3), controlPoint1: CGPoint(x: 15.8, y: 57.9), controlPoint2: CGPoint(x: 16.8, y: 62.2))
        path.addCurve(to: CGPoint(x: 11.3, y: 58), controlPoint1: CGPoint(x: 12.6, y: 60.4), controlPoint2: CGPoint(x: 11.6, y: 58.6))
        path.addCurve(to: CGPoint(x: 11.9, y: 56.8), controlPoint1: CGPoint(x: 11, y: 57.4), controlPoint2: CGPoint(x: 11.6, y: 57))
        path.addCurve(to: CGPoint(x: 15.4, y: 55.7), controlPoint1: CGPoint(x: 12.6, y: 56.7), controlPoint2: CGPoint(x: 14.2, y: 56.2))
        path.close()
        return path
    }
    
    static var bac1path18: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 15.4, y: 55.7))
        path.addCurve(to: CGPoint(x: 18, y: 51.2), controlPoint1: CGPoint(x: 16.6, y: 55.2), controlPoint2: CGPoint(x: 17.7, y: 52.5))
        path.addLine(to: CGPoint(x: 21, y: 55.2))
        path.addCurve(to: CGPoint(x: 17.1, y: 57.2), controlPoint1: CGPoint(x: 20.1, y: 55.6), controlPoint2: CGPoint(x: 18.1, y: 56.5))
        path.addCurve(to: CGPoint(x: 14.7, y: 61.3), controlPoint1: CGPoint(x: 15.8, y: 57.9), controlPoint2: CGPoint(x: 16.8, y: 62.2))
        path.addCurve(to: CGPoint(x: 11.3, y: 58), controlPoint1: CGPoint(x: 12.6, y: 60.4), controlPoint2: CGPoint(x: 11.6, y: 58.6))
        path.addCurve(to: CGPoint(x: 11.9, y: 56.8), controlPoint1: CGPoint(x: 11, y: 57.4), controlPoint2: CGPoint(x: 11.6, y: 57))
        path.addCurve(to: CGPoint(x: 15.4, y: 55.7), controlPoint1: CGPoint(x: 12.6, y: 56.7), controlPoint2: CGPoint(x: 14.2, y: 56.2))
        path.close()
        return path
    }
    
    static var bac1path19: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 7.5, y: 44.7))
        path.addCurve(to: CGPoint(x: 12.9, y: 40.6), controlPoint1: CGPoint(x: 9.2, y: 44.7), controlPoint2: CGPoint(x: 11.8, y: 42))
        path.addLine(to: CGPoint(x: 14.4, y: 47))
        path.addCurve(to: CGPoint(x: 8.8, y: 47.3), controlPoint1: CGPoint(x: 13.2, y: 47), controlPoint2: CGPoint(x: 10.3, y: 47.1))
        path.addCurve(to: CGPoint(x: 3.9, y: 51), controlPoint1: CGPoint(x: 6.9, y: 47.6), controlPoint2: CGPoint(x: 6, y: 53.2))
        path.addCurve(to: CGPoint(x: 1.4, y: 45.3), controlPoint1: CGPoint(x: 1.8, y: 48.8), controlPoint2: CGPoint(x: 1.4, y: 46.3))
        path.addCurve(to: CGPoint(x: 2.8, y: 44.3), controlPoint1: CGPoint(x: 1.4, y: 44.6), controlPoint2: CGPoint(x: 2.3, y: 44.3))
        path.addCurve(to: CGPoint(x: 7.5, y: 44.7), controlPoint1: CGPoint(x: 3.7, y: 44.4), controlPoint2: CGPoint(x: 5.8, y: 44.7))
        path.close()
        return path
    }
    
    static var bac1path20: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 7.5, y: 44.7))
        path.addCurve(to: CGPoint(x: 12.9, y: 40.6), controlPoint1: CGPoint(x: 9.2, y: 44.7), controlPoint2: CGPoint(x: 11.8, y: 42))
        path.addLine(to: CGPoint(x: 14.4, y: 47))
        path.addCurve(to: CGPoint(x: 8.8, y: 47.3), controlPoint1: CGPoint(x: 13.2, y: 47), controlPoint2: CGPoint(x: 10.3, y: 47.1))
        path.addCurve(to: CGPoint(x: 3.9, y: 51), controlPoint1: CGPoint(x: 6.9, y: 47.6), controlPoint2: CGPoint(x: 6, y: 53.2))
        path.addCurve(to: CGPoint(x: 1.4, y: 45.3), controlPoint1: CGPoint(x: 1.8, y: 48.8), controlPoint2: CGPoint(x: 1.4, y: 46.3))
        path.addCurve(to: CGPoint(x: 2.8, y: 44.3), controlPoint1: CGPoint(x: 1.4, y: 44.6), controlPoint2: CGPoint(x: 2.3, y: 44.3))
        path.addCurve(to: CGPoint(x: 7.5, y: 44.7), controlPoint1: CGPoint(x: 3.7, y: 44.4), controlPoint2: CGPoint(x: 5.8, y: 44.7))
        path.close()
        return path
    }
    
    static var bac1path21: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 6.9, y: 46.7))
        path.addCurve(to: CGPoint(x: 13.9, y: 44.8), controlPoint1: CGPoint(x: 7.4, y: 46.3), controlPoint2: CGPoint(x: 12.2, y: 45.2))
        path.addLine(to: CGPoint(x: 14.4, y: 47))
        path.addCurve(to: CGPoint(x: 8.4, y: 47.4), controlPoint1: CGPoint(x: 12.8, y: 47), controlPoint2: CGPoint(x: 9.4, y: 47))
        path.addCurve(to: CGPoint(x: 5.4, y: 51.3), controlPoint1: CGPoint(x: 7.1, y: 47.9), controlPoint2: CGPoint(x: 6.8, y: 50.5))
        path.addCurve(to: CGPoint(x: 3.5, y: 50.6), controlPoint1: CGPoint(x: 4.4, y: 51.9), controlPoint2: CGPoint(x: 3.7, y: 51.1))
        path.addCurve(to: CGPoint(x: 4.4, y: 50.9), controlPoint1: CGPoint(x: 3.6, y: 50.7), controlPoint2: CGPoint(x: 3.9, y: 50.9))
        path.addCurve(to: CGPoint(x: 6.9, y: 46.7), controlPoint1: CGPoint(x: 5.1, y: 50.8), controlPoint2: CGPoint(x: 6.3, y: 47.1))
        path.close()
        return path
    }
    
    static var bac1path22: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 2.3, y: 44.9))
        path.addCurve(to: CGPoint(x: 4.2, y: 45.2), controlPoint1: CGPoint(x: 2.6, y: 44.6), controlPoint2: CGPoint(x: 3.7, y: 45))
        path.addLine(to: CGPoint(x: 2.9, y: 45.4))
        path.addCurve(to: CGPoint(x: 2.6, y: 46.2), controlPoint1: CGPoint(x: 2.5, y: 45.5), controlPoint2: CGPoint(x: 3, y: 46.1))
        path.addCurve(to: CGPoint(x: 2.3, y: 44.9), controlPoint1: CGPoint(x: 2.1, y: 46.3), controlPoint2: CGPoint(x: 2, y: 45.4))
        path.close()
        return path
    }
    
    static var bac1path23: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 13.8, y: 18.6))
        path.addCurve(to: CGPoint(x: 20.3, y: 20.3), controlPoint1: CGPoint(x: 14.9, y: 19.9), controlPoint2: CGPoint(x: 18.6, y: 20.3))
        path.addLine(to: CGPoint(x: 16.3, y: 25.5))
        path.addCurve(to: CGPoint(x: 12.6, y: 21.2), controlPoint1: CGPoint(x: 15.5, y: 24.5), controlPoint2: CGPoint(x: 13.7, y: 22.2))
        path.addCurve(to: CGPoint(x: 6.6, y: 19.6), controlPoint1: CGPoint(x: 11.2, y: 19.8), controlPoint2: CGPoint(x: 6.2, y: 22.6))
        path.addCurve(to: CGPoint(x: 9.6, y: 14.1), controlPoint1: CGPoint(x: 7, y: 16.6), controlPoint2: CGPoint(x: 8.9, y: 14.7))
        path.addCurve(to: CGPoint(x: 11.2, y: 14.6), controlPoint1: CGPoint(x: 10.2, y: 13.7), controlPoint2: CGPoint(x: 10.9, y: 14.2))
        path.addCurve(to: CGPoint(x: 13.8, y: 18.6), controlPoint1: CGPoint(x: 11.7, y: 15.3), controlPoint2: CGPoint(x: 12.8, y: 17.2))
        path.close()
        return path
    }
    
    static var bac1path24: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 13.8, y: 18.6))
        path.addCurve(to: CGPoint(x: 20.3, y: 20.3), controlPoint1: CGPoint(x: 14.9, y: 19.9), controlPoint2: CGPoint(x: 18.6, y: 20.3))
        path.addLine(to: CGPoint(x: 16.3, y: 25.5))
        path.addCurve(to: CGPoint(x: 12.6, y: 21.2), controlPoint1: CGPoint(x: 15.5, y: 24.5), controlPoint2: CGPoint(x: 13.7, y: 22.2))
        path.addCurve(to: CGPoint(x: 6.6, y: 19.6), controlPoint1: CGPoint(x: 11.2, y: 19.8), controlPoint2: CGPoint(x: 6.2, y: 22.6))
        path.addCurve(to: CGPoint(x: 9.6, y: 14.1), controlPoint1: CGPoint(x: 7, y: 16.6), controlPoint2: CGPoint(x: 8.9, y: 14.7))
        path.addCurve(to: CGPoint(x: 11.2, y: 14.6), controlPoint1: CGPoint(x: 10.2, y: 13.7), controlPoint2: CGPoint(x: 10.9, y: 14.2))
        path.addCurve(to: CGPoint(x: 13.8, y: 18.6), controlPoint1: CGPoint(x: 11.7, y: 15.3), controlPoint2: CGPoint(x: 12.8, y: 17.2))
        path.close()
        return path
    }
    
    static var bac1path25: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 11.9, y: 19.3))
        path.addCurve(to: CGPoint(x: 17.7, y: 23.7), controlPoint1: CGPoint(x: 12.5, y: 19.4), controlPoint2: CGPoint(x: 16.3, y: 22.5))
        path.addLine(to: CGPoint(x: 16.3, y: 25.5))
        path.addCurve(to: CGPoint(x: 12.3, y: 20.9), controlPoint1: CGPoint(x: 15.3, y: 24.2), controlPoint2: CGPoint(x: 13.2, y: 21.5))
        path.addCurve(to: CGPoint(x: 7.4, y: 21), controlPoint1: CGPoint(x: 11.1, y: 20.2), controlPoint2: CGPoint(x: 8.8, y: 21.5))
        path.addCurve(to: CGPoint(x: 6.8, y: 19.1), controlPoint1: CGPoint(x: 6.3, y: 20.5), controlPoint2: CGPoint(x: 6.5, y: 19.5))
        path.addCurve(to: CGPoint(x: 7.1, y: 19.9), controlPoint1: CGPoint(x: 6.7, y: 19.2), controlPoint2: CGPoint(x: 6.8, y: 19.5))
        path.addCurve(to: CGPoint(x: 11.9, y: 19.3), controlPoint1: CGPoint(x: 7.6, y: 20.4), controlPoint2: CGPoint(x: 11.2, y: 19.1))
        path.close()
        return path
    }
    
    static var bac1path26: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 10.5, y: 14.6))
        path.addCurve(to: CGPoint(x: 11.4, y: 16.2), controlPoint1: CGPoint(x: 10.9, y: 14.6), controlPoint2: CGPoint(x: 11.3, y: 15.7))
        path.addLine(to: CGPoint(x: 10.4, y: 15.4))
        path.addCurve(to: CGPoint(x: 9.6, y: 15.6), controlPoint1: CGPoint(x: 10.1, y: 15.1), controlPoint2: CGPoint(x: 9.9, y: 15.8))
        path.addCurve(to: CGPoint(x: 10.5, y: 14.6), controlPoint1: CGPoint(x: 9.3, y: 15.3), controlPoint2: CGPoint(x: 9.9, y: 14.6))
        path.close()
        return path
    }
    
    static var bac1path27: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 36.2, y: 7.6))
        path.addCurve(to: CGPoint(x: 38.8, y: 13.9), controlPoint1: CGPoint(x: 35.8, y: 9.3), controlPoint2: CGPoint(x: 37.7, y: 12.5))
        path.addLine(to: CGPoint(x: 32.2, y: 13.7))
        path.addCurve(to: CGPoint(x: 33.4, y: 8.2), controlPoint1: CGPoint(x: 32.6, y: 12.5), controlPoint2: CGPoint(x: 33.2, y: 9.7))
        path.addCurve(to: CGPoint(x: 31.1, y: 2.4), controlPoint1: CGPoint(x: 33.6, y: 6.3), controlPoint2: CGPoint(x: 28.5, y: 3.9))
        path.addCurve(to: CGPoint(x: 37.2, y: 1.6), controlPoint1: CGPoint(x: 33.7, y: 1), controlPoint2: CGPoint(x: 36.3, y: 1.3))
        path.addCurve(to: CGPoint(x: 37.8, y: 3.1), controlPoint1: CGPoint(x: 37.9, y: 1.8), controlPoint2: CGPoint(x: 37.9, y: 2.7))
        path.addCurve(to: CGPoint(x: 36.2, y: 7.6), controlPoint1: CGPoint(x: 37.5, y: 4), controlPoint2: CGPoint(x: 36.7, y: 6))
        path.close()
        return path
    }
    
    static var bac1path28: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 36.2, y: 7.6))
        path.addCurve(to: CGPoint(x: 38.8, y: 13.9), controlPoint1: CGPoint(x: 35.8, y: 9.3), controlPoint2: CGPoint(x: 37.7, y: 12.5))
        path.addLine(to: CGPoint(x: 32.2, y: 13.7))
        path.addCurve(to: CGPoint(x: 33.4, y: 8.2), controlPoint1: CGPoint(x: 32.6, y: 12.5), controlPoint2: CGPoint(x: 33.2, y: 9.7))
        path.addCurve(to: CGPoint(x: 31.1, y: 2.4), controlPoint1: CGPoint(x: 33.6, y: 6.3), controlPoint2: CGPoint(x: 28.5, y: 3.9))
        path.addCurve(to: CGPoint(x: 37.2, y: 1.6), controlPoint1: CGPoint(x: 33.7, y: 1), controlPoint2: CGPoint(x: 36.3, y: 1.3))
        path.addCurve(to: CGPoint(x: 37.8, y: 3.1), controlPoint1: CGPoint(x: 37.9, y: 1.8), controlPoint2: CGPoint(x: 37.9, y: 2.7))
        path.addCurve(to: CGPoint(x: 36.2, y: 7.6), controlPoint1: CGPoint(x: 37.5, y: 4), controlPoint2: CGPoint(x: 36.7, y: 6))
        path.close()
        return path
    }
    
    static var bac1path29: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 34.5, y: 6.5))
        path.addCurve(to: CGPoint(x: 34.4, y: 13.8), controlPoint1: CGPoint(x: 34.7, y: 7.1), controlPoint2: CGPoint(x: 34.6, y: 12))
        path.addLine(to: CGPoint(x: 32.2, y: 13.7))
        path.addCurve(to: CGPoint(x: 33.4, y: 7.8), controlPoint1: CGPoint(x: 32.6, y: 12.2), controlPoint2: CGPoint(x: 33.5, y: 8.9))
        path.addCurve(to: CGPoint(x: 30.4, y: 3.9), controlPoint1: CGPoint(x: 33.3, y: 6.4), controlPoint2: CGPoint(x: 30.8, y: 5.4))
        path.addCurve(to: CGPoint(x: 31.6, y: 2.3), controlPoint1: CGPoint(x: 30.1, y: 2.8), controlPoint2: CGPoint(x: 31.1, y: 2.3))
        path.addCurve(to: CGPoint(x: 31.1, y: 3.1), controlPoint1: CGPoint(x: 31.5, y: 2.3), controlPoint2: CGPoint(x: 31.2, y: 2.5))
        path.addCurve(to: CGPoint(x: 34.5, y: 6.5), controlPoint1: CGPoint(x: 31, y: 3.7), controlPoint2: CGPoint(x: 34.2, y: 5.8))
        path.close()
        return path
    }
    
    static var bac1path30: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 37.3, y: 2.5))
        path.addCurve(to: CGPoint(x: 36.6, y: 4.2), controlPoint1: CGPoint(x: 37.6, y: 2.9), controlPoint2: CGPoint(x: 37, y: 3.8))
        path.addLine(to: CGPoint(x: 36.7, y: 3))
        path.addCurve(to: CGPoint(x: 36.1, y: 2.4), controlPoint1: CGPoint(x: 36.7, y: 2.6), controlPoint2: CGPoint(x: 36, y: 2.9))
        path.addCurve(to: CGPoint(x: 37.3, y: 2.5), controlPoint1: CGPoint(x: 36.1, y: 2), controlPoint2: CGPoint(x: 36.9, y: 2.1))
        path.close()
        return path
    }
    
    static var bac1path31: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 58.3, y: 19))
        path.addCurve(to: CGPoint(x: 55, y: 24.8), controlPoint1: CGPoint(x: 56.7, y: 19.6), controlPoint2: CGPoint(x: 55.4, y: 23.1))
        path.addLine(to: CGPoint(x: 51.1, y: 19.5))
        path.addCurve(to: CGPoint(x: 56.2, y: 17.1), controlPoint1: CGPoint(x: 52.2, y: 19), controlPoint2: CGPoint(x: 54.9, y: 17.9))
        path.addCurve(to: CGPoint(x: 59.3, y: 11.7), controlPoint1: CGPoint(x: 57.8, y: 16.1), controlPoint2: CGPoint(x: 56.5, y: 10.5))
        path.addCurve(to: CGPoint(x: 63.7, y: 16), controlPoint1: CGPoint(x: 62, y: 12.9), controlPoint2: CGPoint(x: 63.3, y: 15.1))
        path.addCurve(to: CGPoint(x: 62.8, y: 17.5), controlPoint1: CGPoint(x: 64, y: 16.7), controlPoint2: CGPoint(x: 63.2, y: 17.3))
        path.addCurve(to: CGPoint(x: 58.3, y: 19), controlPoint1: CGPoint(x: 62, y: 17.7), controlPoint2: CGPoint(x: 59.9, y: 18.3))
        path.close()
        return path
    }
    
    static var bac1path32: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 58.3, y: 19))
        path.addCurve(to: CGPoint(x: 55, y: 24.8), controlPoint1: CGPoint(x: 56.7, y: 19.6), controlPoint2: CGPoint(x: 55.4, y: 23.1))
        path.addLine(to: CGPoint(x: 51.1, y: 19.5))
        path.addCurve(to: CGPoint(x: 56.2, y: 17.1), controlPoint1: CGPoint(x: 52.2, y: 19), controlPoint2: CGPoint(x: 54.9, y: 17.9))
        path.addCurve(to: CGPoint(x: 59.3, y: 11.7), controlPoint1: CGPoint(x: 57.8, y: 16.1), controlPoint2: CGPoint(x: 56.5, y: 10.5))
        path.addCurve(to: CGPoint(x: 63.7, y: 16), controlPoint1: CGPoint(x: 62, y: 12.9), controlPoint2: CGPoint(x: 63.3, y: 15.1))
        path.addCurve(to: CGPoint(x: 62.8, y: 17.5), controlPoint1: CGPoint(x: 64, y: 16.7), controlPoint2: CGPoint(x: 63.2, y: 17.3))
        path.addCurve(to: CGPoint(x: 58.3, y: 19), controlPoint1: CGPoint(x: 62, y: 17.7), controlPoint2: CGPoint(x: 59.9, y: 18.3))
        path.close()
        return path
    }
    
    static var bac1path33: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 58.2, y: 16.9))
        path.addCurve(to: CGPoint(x: 52.4, y: 21.3), controlPoint1: CGPoint(x: 57.9, y: 17.4), controlPoint2: CGPoint(x: 53.9, y: 20.3))
        path.addLine(to: CGPoint(x: 51.1, y: 19.5))
        path.addCurve(to: CGPoint(x: 56.5, y: 16.8), controlPoint1: CGPoint(x: 52.5, y: 18.9), controlPoint2: CGPoint(x: 55.7, y: 17.6))
        path.addCurve(to: CGPoint(x: 57.7, y: 12.1), controlPoint1: CGPoint(x: 57.5, y: 15.9), controlPoint2: CGPoint(x: 56.8, y: 13.3))
        path.addCurve(to: CGPoint(x: 59.7, y: 12), controlPoint1: CGPoint(x: 58.4, y: 11.1), controlPoint2: CGPoint(x: 59.3, y: 11.6))
        path.addCurve(to: CGPoint(x: 58.8, y: 12.1), controlPoint1: CGPoint(x: 59.6, y: 11.9), controlPoint2: CGPoint(x: 59.3, y: 11.8))
        path.addCurve(to: CGPoint(x: 58.2, y: 16.9), controlPoint1: CGPoint(x: 58.2, y: 12.4), controlPoint2: CGPoint(x: 58.5, y: 16.3))
        path.close()
        return path
    }
    
    static var bac1path34: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 63, y: 16.7))
        path.addCurve(to: CGPoint(x: 61.2, y: 17.2), controlPoint1: CGPoint(x: 62.9, y: 17.2), controlPoint2: CGPoint(x: 61.8, y: 17.2))
        path.addLine(to: CGPoint(x: 62.3, y: 16.5))
        path.addCurve(to: CGPoint(x: 62.3, y: 15.6), controlPoint1: CGPoint(x: 62.6, y: 16.2), controlPoint2: CGPoint(x: 62, y: 15.9))
        path.addCurve(to: CGPoint(x: 63, y: 16.7), controlPoint1: CGPoint(x: 62.7, y: 15.4), controlPoint2: CGPoint(x: 63.1, y: 16.1))
        path.close()
        return path
    }
    
    static var bac1path35: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 64.5, y: 44.6))
        path.addCurve(to: CGPoint(x: 58.1, y: 46.4), controlPoint1: CGPoint(x: 63, y: 43.9), controlPoint2: CGPoint(x: 59.6, y: 45.5))
        path.addLine(to: CGPoint(x: 59, y: 39.9))
        path.addCurve(to: CGPoint(x: 64.4, y: 41.7), controlPoint1: CGPoint(x: 60.2, y: 40.3), controlPoint2: CGPoint(x: 62.9, y: 41.4))
        path.addCurve(to: CGPoint(x: 70.3, y: 40.1), controlPoint1: CGPoint(x: 66.2, y: 42.2), controlPoint2: CGPoint(x: 69.2, y: 37.3))
        path.addCurve(to: CGPoint(x: 70.4, y: 46.3), controlPoint1: CGPoint(x: 71.4, y: 42.9), controlPoint2: CGPoint(x: 70.8, y: 45.5))
        path.addCurve(to: CGPoint(x: 68.8, y: 46.8), controlPoint1: CGPoint(x: 70.1, y: 47), controlPoint2: CGPoint(x: 69.2, y: 46.9))
        path.addCurve(to: CGPoint(x: 64.5, y: 44.6), controlPoint1: CGPoint(x: 68, y: 46.3), controlPoint2: CGPoint(x: 66.1, y: 45.3))
        path.close()
        return path
    }
    
    static var bac1path36: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 64.5, y: 44.6))
        path.addCurve(to: CGPoint(x: 58.1, y: 46.4), controlPoint1: CGPoint(x: 63, y: 43.9), controlPoint2: CGPoint(x: 59.6, y: 45.5))
        path.addLine(to: CGPoint(x: 59, y: 39.9))
        path.addCurve(to: CGPoint(x: 64.4, y: 41.7), controlPoint1: CGPoint(x: 60.2, y: 40.3), controlPoint2: CGPoint(x: 62.9, y: 41.4))
        path.addCurve(to: CGPoint(x: 70.3, y: 40.1), controlPoint1: CGPoint(x: 66.2, y: 42.2), controlPoint2: CGPoint(x: 69.2, y: 37.3))
        path.addCurve(to: CGPoint(x: 70.4, y: 46.3), controlPoint1: CGPoint(x: 71.4, y: 42.9), controlPoint2: CGPoint(x: 70.8, y: 45.5))
        path.addCurve(to: CGPoint(x: 68.8, y: 46.8), controlPoint1: CGPoint(x: 70.1, y: 47), controlPoint2: CGPoint(x: 69.2, y: 46.9))
        path.addCurve(to: CGPoint(x: 64.5, y: 44.6), controlPoint1: CGPoint(x: 68, y: 46.3), controlPoint2: CGPoint(x: 66.1, y: 45.3))
        path.close()
        return path
    }
    
    static var bac1path37: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 65.9, y: 43))
        path.addCurve(to: CGPoint(x: 59.5, y: 42.5), controlPoint1: CGPoint(x: 65.3, y: 43.2), controlPoint2: CGPoint(x: 61.3, y: 42.9))
        path.addLine(to: CGPoint(x: 60, y: 40.1))
        path.addCurve(to: CGPoint(x: 64.8, y: 41.8), controlPoint1: CGPoint(x: 61.5, y: 40.7), controlPoint2: CGPoint(x: 63.7, y: 41.8))
        path.addCurve(to: CGPoint(x: 68.9, y: 39.3), controlPoint1: CGPoint(x: 66.1, y: 41.8), controlPoint2: CGPoint(x: 67.4, y: 39.5))
        path.addCurve(to: CGPoint(x: 70.4, y: 40.6), controlPoint1: CGPoint(x: 70.1, y: 39.1), controlPoint2: CGPoint(x: 70.4, y: 40.1))
        path.addCurve(to: CGPoint(x: 69.7, y: 40.1), controlPoint1: CGPoint(x: 70.4, y: 40.5), controlPoint2: CGPoint(x: 70.2, y: 40.2))
        path.addCurve(to: CGPoint(x: 65.9, y: 43), controlPoint1: CGPoint(x: 69.1, y: 39.9), controlPoint2: CGPoint(x: 66.6, y: 42.9))
        path.close()
        return path
    }
    
    static var bac1path38: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 69.4, y: 46.4))
        path.addCurve(to: CGPoint(x: 67.8, y: 45.4), controlPoint1: CGPoint(x: 69.1, y: 46.6), controlPoint2: CGPoint(x: 68.2, y: 45.8))
        path.addLine(to: CGPoint(x: 69.1, y: 45.7))
        path.addCurve(to: CGPoint(x: 69.7, y: 45.1), controlPoint1: CGPoint(x: 69.5, y: 45.8), controlPoint2: CGPoint(x: 69.3, y: 45))
        path.addCurve(to: CGPoint(x: 69.4, y: 46.4), controlPoint1: CGPoint(x: 70.1, y: 45.2), controlPoint2: CGPoint(x: 69.9, y: 46))
        path.close()
        return path
    }
    
    static var bac1path39: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 53.3, y: 61))
        path.addCurve(to: CGPoint(x: 47.4, y: 57.6), controlPoint1: CGPoint(x: 52.6, y: 59.4), controlPoint2: CGPoint(x: 49.1, y: 58.1))
        path.addLine(to: CGPoint(x: 52.7, y: 53.7))
        path.addCurve(to: CGPoint(x: 55.1, y: 58.8), controlPoint1: CGPoint(x: 53.2, y: 54.9), controlPoint2: CGPoint(x: 54.3, y: 57.5))
        path.addCurve(to: CGPoint(x: 60.5, y: 61.9), controlPoint1: CGPoint(x: 56.1, y: 60.5), controlPoint2: CGPoint(x: 61.6, y: 59.2))
        path.addCurve(to: CGPoint(x: 56.2, y: 66.4), controlPoint1: CGPoint(x: 59.3, y: 64.7), controlPoint2: CGPoint(x: 57, y: 66))
        path.addCurve(to: CGPoint(x: 54.7, y: 65.5), controlPoint1: CGPoint(x: 55.5, y: 66.7), controlPoint2: CGPoint(x: 54.9, y: 65.9))
        path.addCurve(to: CGPoint(x: 53.3, y: 61), controlPoint1: CGPoint(x: 54.5, y: 64.7), controlPoint2: CGPoint(x: 53.9, y: 62.6))
        path.close()
        return path
    }
    
    static var bac1path40: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 53.3, y: 61))
        path.addCurve(to: CGPoint(x: 47.4, y: 57.6), controlPoint1: CGPoint(x: 52.6, y: 59.4), controlPoint2: CGPoint(x: 49.1, y: 58.1))
        path.addLine(to: CGPoint(x: 52.7, y: 53.7))
        path.addCurve(to: CGPoint(x: 55.1, y: 58.8), controlPoint1: CGPoint(x: 53.2, y: 54.9), controlPoint2: CGPoint(x: 54.3, y: 57.5))
        path.addCurve(to: CGPoint(x: 60.5, y: 61.9), controlPoint1: CGPoint(x: 56.1, y: 60.5), controlPoint2: CGPoint(x: 61.6, y: 59.2))
        path.addCurve(to: CGPoint(x: 56.2, y: 66.4), controlPoint1: CGPoint(x: 59.3, y: 64.7), controlPoint2: CGPoint(x: 57, y: 66))
        path.addCurve(to: CGPoint(x: 54.7, y: 65.5), controlPoint1: CGPoint(x: 55.5, y: 66.7), controlPoint2: CGPoint(x: 54.9, y: 65.9))
        path.addCurve(to: CGPoint(x: 53.3, y: 61), controlPoint1: CGPoint(x: 54.5, y: 64.7), controlPoint2: CGPoint(x: 53.9, y: 62.6))
        path.close()
        return path
    }
    
    static var bac1path41: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 55.3, y: 60.8))
        path.addCurve(to: CGPoint(x: 51.5, y: 56), controlPoint1: CGPoint(x: 54.8, y: 60.5), controlPoint2: CGPoint(x: 52.5, y: 57.5))
        path.addLine(to: CGPoint(x: 53, y: 54.5))
        path.addCurve(to: CGPoint(x: 55.4, y: 59.2), controlPoint1: CGPoint(x: 54, y: 56), controlPoint2: CGPoint(x: 54.6, y: 58.4))
        path.addCurve(to: CGPoint(x: 60.1, y: 60.4), controlPoint1: CGPoint(x: 56.3, y: 60.1), controlPoint2: CGPoint(x: 58.9, y: 59.5))
        path.addCurve(to: CGPoint(x: 60.2, y: 62.4), controlPoint1: CGPoint(x: 61, y: 61.1), controlPoint2: CGPoint(x: 60.6, y: 62))
        path.addCurve(to: CGPoint(x: 60.1, y: 61.5), controlPoint1: CGPoint(x: 60.3, y: 62.3), controlPoint2: CGPoint(x: 60.3, y: 61.9))
        path.addCurve(to: CGPoint(x: 55.3, y: 60.8), controlPoint1: CGPoint(x: 59.8, y: 60.9), controlPoint2: CGPoint(x: 55.9, y: 61.2))
        path.close()
        return path
    }
    
    static var bac1path42: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 55.5, y: 65.7))
        path.addCurve(to: CGPoint(x: 55, y: 63.9), controlPoint1: CGPoint(x: 55, y: 65.6), controlPoint2: CGPoint(x: 55, y: 64.5))
        path.addLine(to: CGPoint(x: 55.7, y: 65))
        path.addCurve(to: CGPoint(x: 56.5, y: 65), controlPoint1: CGPoint(x: 55.9, y: 65.3), controlPoint2: CGPoint(x: 56.3, y: 64.7))
        path.addCurve(to: CGPoint(x: 55.5, y: 65.7), controlPoint1: CGPoint(x: 56.8, y: 65.4), controlPoint2: CGPoint(x: 56.1, y: 65.8))
        path.close()
        return path
    }
    
    static var bac1path43: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 16.4, y: 33.9))
        path.addCurve(to: CGPoint(x: 38.4, y: 16.4), controlPoint1: CGPoint(x: 18, y: 17.1), controlPoint2: CGPoint(x: 31.7, y: 15.2))
        path.addCurve(to: CGPoint(x: 29.4, y: 19), controlPoint1: CGPoint(x: 32.6, y: 15.7), controlPoint2: CGPoint(x: 27, y: 19.8))
        path.addCurve(to: CGPoint(x: 33.9, y: 19), controlPoint1: CGPoint(x: 31.3, y: 18.5), controlPoint2: CGPoint(x: 33.7, y: 18.5))
        path.addCurve(to: CGPoint(x: 19.9, y: 30.9), controlPoint1: CGPoint(x: 26.5, y: 20.8), controlPoint2: CGPoint(x: 20.8, y: 28.1))
        path.addCurve(to: CGPoint(x: 19.9, y: 29.5), controlPoint1: CGPoint(x: 19.9, y: 30.4), controlPoint2: CGPoint(x: 19.9, y: 29.9))
        path.addCurve(to: CGPoint(x: 18.6, y: 28.8), controlPoint1: CGPoint(x: 20, y: 28.5), controlPoint2: CGPoint(x: 19.1, y: 28))
        path.addCurve(to: CGPoint(x: 16.4, y: 33.9), controlPoint1: CGPoint(x: 17.7, y: 30.5), controlPoint2: CGPoint(x: 16.8, y: 32.6))
        path.close()
        return path
    }
    
    static var bac1path44: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 58.5, y: 28.5))
        path.addCurve(to: CGPoint(x: 16.5, y: 51), controlPoint1: CGPoint(x: 50, y: 47.1), controlPoint2: CGPoint(x: 27.1, y: 51.1))
        path.addCurve(to: CGPoint(x: 36.5, y: 61.5), controlPoint1: CGPoint(x: 22.1, y: 58.7), controlPoint2: CGPoint(x: 28.5, y: 61))
        path.addCurve(to: CGPoint(x: 44.5, y: 60), controlPoint1: CGPoint(x: 38.9, y: 61.5), controlPoint2: CGPoint(x: 42, y: 60.9))
        path.addCurve(to: CGPoint(x: 48, y: 58.5), controlPoint1: CGPoint(x: 45.7, y: 59.6), controlPoint2: CGPoint(x: 47.1, y: 59.1))
        path.addCurve(to: CGPoint(x: 58.5, y: 28.5), controlPoint1: CGPoint(x: 62, y: 50), controlPoint2: CGPoint(x: 61.5, y: 34.5))
        path.close()
        return path
    }
    
    static var bac1path45: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 32.6, y: 57.3))
        path.addCurve(to: CGPoint(x: 55.1, y: 40.4), controlPoint1: CGPoint(x: 49.2, y: 60.1), controlPoint2: CGPoint(x: 54.5, y: 47.2))
        path.addCurve(to: CGPoint(x: 50.2, y: 48.5), controlPoint1: CGPoint(x: 54.3, y: 46.2), controlPoint2: CGPoint(x: 48.9, y: 50.6))
        path.addCurve(to: CGPoint(x: 51.4, y: 44.1), controlPoint1: CGPoint(x: 51.3, y: 46.8), controlPoint2: CGPoint(x: 51.8, y: 44.5))
        path.addCurve(to: CGPoint(x: 36.4, y: 54.6), controlPoint1: CGPoint(x: 47.7, y: 50.9), controlPoint2: CGPoint(x: 39.3, y: 54.5))
        path.addCurve(to: CGPoint(x: 37.7, y: 55), controlPoint1: CGPoint(x: 36.9, y: 54.8), controlPoint2: CGPoint(x: 37.3, y: 54.9))
        path.addCurve(to: CGPoint(x: 38, y: 56.4), controlPoint1: CGPoint(x: 38.7, y: 55.2), controlPoint2: CGPoint(x: 39, y: 56.2))
        path.addCurve(to: CGPoint(x: 32.6, y: 57.3), controlPoint1: CGPoint(x: 36.2, y: 56.9), controlPoint2: CGPoint(x: 34, y: 57.2))
        path.close()
        return path
    }
    
    static var bac1path46: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 11, y: 38))
        path.addArc(withCenter: CGPoint(x: 36, y: 38), radius: 25, startAngle: 0, endAngle: .pi * 2, clockwise: true)
        return path
    }
    
}
