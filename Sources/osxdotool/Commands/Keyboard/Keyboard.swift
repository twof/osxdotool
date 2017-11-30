//
//  Type.swift
//  osxdotool
//
//  Created by fnord on 9/13/17.
//
//

import Foundation
import CLSwift
import osxdotoolCore

//In the order they appear in xdotool man pages

public class Keyboard {
    typealias clError = CLSwift.InputError
    //    public static let key
    
    //    public static let keyUp
    
    //    public static let keyDown
    
    public static let type = Command<String>(
        triggers: ["type"],
        help: "Types input",
        state: ["delay": 12],
        numParams: .number(1),
        options: [delay]
    ) { (input, state) in
        let toType = input[0]
        guard let _delay = state["delay"] as? Int else {return}
        let delay = UInt32(_delay)
        
        do {
            try KeyboardHelper.typeString(stringToType: toType, delay: delay)
        } catch {
            print(error)
        }
    }
}

/// Options
extension Keyboard {
    private static let delay = Option<Int>(
        triggers: ["--delay"],
        help: "Delay between keystrokes in miliseconds",
        numParams: .number(1)
    ) { (vals, state) -> State in
        var newState = state
        newState["delay"] = vals[0]
        return newState
    }
    
    private static let window = Option<String>(
        triggers: ["--window"],
        help: "Send keystrokes to a specific window id.",
        numParams: .number(1)
    ) { (input, state) -> State in
        let windowId = input[0]
        var newState = state
        fatalError("window not implemented")
//        return state
    }
    
    private static let clearModifiers = Option<Bool>(
        triggers: ["--clearmodifiers"],
        help: "Clear modifiers before sending keystrokes.",
        numParams: .none
    ) { (input, state) -> State in
        var newState = state
        fatalError("clearmodifiers not implemented")
//        return state
    }
}



