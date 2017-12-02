//
//  Mouse.swift
//  osxdotool
//
//  Created by fnord on 9/13/17.
//
//

import Foundation
import CLSwift
import osxdotoolCore

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
    public static let click = Command<Int>(
        triggers: ["click"],
        help: "Send a click, that is, a mousedown followed by mouseup for the given button",
        numParams: .number(1),
        options: []
    ) { (input, state) in
        let buttonNum = input[0] - 1
        guard let mouseButton = MouseButton(rawValue: buttonNum)
            else {throw InputError.customError("Invalid mouse button number")}
        mouseButton.click()
    }
    
//    public static let mouseDown
    
//    public static let mouseUp
    
//    public static let getMouseLocation
    
//    public static let behaveScreenEdge
    
    
}
