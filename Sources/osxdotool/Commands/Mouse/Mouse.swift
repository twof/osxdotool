//
//  Mouse.swift
//  osxdotool
//
//  Created by fnord on 9/13/17.
//
//

import Foundation
import CLSwift

public class Mouse {
    public static let mouseMove = Argument<Int>(argStrings: ["mousemove"], numArgs: .number(2)) { (result) in
        switch result {
        case .success(let input):
            let x = input[0]
            let y = input[1]
            
            CGDisplayMoveCursorToPoint(CGMainDisplayID(), CGPoint(x: x, y: y))
        case .error(let error):
            switch error {
            case clError.invalidType(let message):
                print(message)
            case clError.tooFewArgs:
                print("Error: An x and y value are required")
            default:
                print("Error: Some error uncaught in `type`")
            }

        }
    }
    
//    public static let mouseMoveRelative
    
//    public static let click
    
//    public static let mouseDown
    
//    public static let mouseUp
    
//    public static let getMouseLocation
    
//    public static let behaveScreenEdge
    
    
}
