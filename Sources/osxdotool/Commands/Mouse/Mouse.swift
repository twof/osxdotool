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
    public static let mouseMove = Command<Int>(
        triggers: ["mousemove"],
        help: "Moves the mouse to the supplied x and y coordinates",
        numParams: .number(2))
    { (input, state) in
        let x = input[0]
        let y = input[1]
        
        CGDisplayMoveCursorToPoint(CGMainDisplayID(), CGPoint(x: x, y: y))
    }
    
//    public static let mouseMoveRelative
    
//    public static let click
    
//    public static let mouseDown
    
//    public static let mouseUp
    
//    public static let getMouseLocation
    
//    public static let behaveScreenEdge
    
    
}
