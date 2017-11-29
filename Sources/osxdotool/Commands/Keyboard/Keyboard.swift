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
        options: [delayOption]
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
    
    /// Options
    private static let delayOption = Option<Int>(
        triggers: ["--delay"],
        help: "Delay between keystrokes in miliseconds",
        numParams: .number(1)
    ) { (vals, state) -> State in
        var newState = state
        newState["delay"] = vals[0]
        return newState
    }
}



