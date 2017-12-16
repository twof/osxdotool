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
        numParams: .number(2),
        options: [GlobalOptions.window,
                  Mouse.screen,
                  Mouse.polar,
                  GlobalOptions.clearModifiers,
                  GlobalOptions.sync]
    ) { (input, state) in
        var x = input[0]
        var y = input[1]
        
        guard let isPolar = state[Constant.polar] as? Bool
            else {throw InputError.customError("Polar state is broken")}
        if isPolar {
            let radius = input[0]
            let angle = input[1]
            (x, y) = polarToCartesian(radius: radius, angle: angle)
        }
        
        CGDisplayMoveCursorToPoint(CGMainDisplayID(), CGPoint(x: x, y: y))
    }
    
//    public static let mouseMoveRelative
    
    public static let click = Command<Int>(
        triggers: ["click"],
        help: "Send a click, that is, a mousedown followed by mouseup for the given button",
        numParams: .number(1),
        options: [GlobalOptions.clearModifiers,
                  GlobalOptions.repeats,
                  GlobalOptions.delay,
                  GlobalOptions.window]
    ) { (input, state) in
        let buttonNum = input[0] - 1
        guard let mouseButton = MouseButton(rawValue: buttonNum)
            else {throw InputError.customError("Invalid mouse button number")}
        guard let repeats = state["repeat"] as? Int else {return}
        guard let _delay = state["delay"] as? Int else {return}
        let delay = UInt32(_delay) * 1000
        mouseButton.click(repeats: repeats, delay: delay)
    }
    
//    public static let mouseDown
    
//    public static let mouseUp
    
//    public static let getMouseLocation
    
//    public static let behaveScreenEdge
    
    
}

extension Mouse {
    private static func polarToCartesian(radius: Int, angle: Int) -> (Int, Int) {
        let x = Int(Double(radius) * cos(Double(angle)))
        let y = Int(Double(radius) * sin(Double(angle)))
        return (x, y)
    }
}
