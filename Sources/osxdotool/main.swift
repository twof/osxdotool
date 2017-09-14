//
//  main.swift
//  osxdotool
//
//  Created by fnord on 7/2/17.
//  Copyright © 2017 twof. All rights reserved.
//

import Foundation
import Cocoa
import CLSwift


let commandCenter = CommandCenter(topLevelArgs: [
    Keyboard.type
])

let executedCommand = commandCenter.check()

if let executedCommand = executedCommand {
    executedCommand.execute()
}



//if CommandLine.arguments.count > 1 {
//    switch CommandLine.arguments[1] {
//    case "mousemove":
//        if CommandLine.arguments.count > 3 {
//            guard let x: Int = Int(CommandLine.arguments[2]) else {print("real x val please"); break}
//            guard let y: Int = Int(CommandLine.arguments[3]) else {print("real y val please"); break}
//            
//            CGDisplayMoveCursorToPoint(CGMainDisplayID(), CGPoint(x: x, y: y))
//        }else{
//            print("too few args")
//        }
//    case "mousemove_relative":
//        let params = Array(CommandLine.arguments.dropFirst(2))
//        
//        if params.count > 1 {
//            guard let x: Double = Double(params[0]) else {print("real x val please"); break}
//            guard let y: Double = Double(params[1]) else {print("real y val please"); break}
//            
//            let currentPos = NSEvent.mouseLocation()
//            
//            CGDisplayMoveCursorToPoint(CGMainDisplayID(), CGPoint(x: currentPos.x.native + x, y: currentPos.y.native + y))
//        }
//    case "getmouselocation":
//        print(NSEvent.mouseLocation())
//    case "click":
//        let params = Array(CommandLine.arguments.dropFirst(2))
//        
//        if params.count > 0 {
//            guard let buttonNum: Int = Int(params[0]) else {print("real mouse button please"); break}
//            
//            MouseButton(rawValue: buttonNum - 1)?.click()
//        }
//    case "key":
//        let params = Array(CommandLine.arguments.dropFirst(2))
//        
//        print("not yet implemented")
//    case "type":
//        let params = Array(CommandLine.arguments.dropFirst(2))
//        
//        if params.count > 0 {
//            let thingToType: String = params[0]
//            
//            typeString(stringToType: thingToType)
//        }else{
//            print("too few args")
//        }
//    default:
//        print("please supply a command")
//    }
//}

