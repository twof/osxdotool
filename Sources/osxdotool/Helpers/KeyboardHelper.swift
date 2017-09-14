//
//  Keyboard.swift
//  osxdotool
//
//  Created by fnord on 9/13/17.
//
//

import Foundation

public class KeyboardHelper {
    static func pressKey(keyCode: UInt8) {
        let keyD = CGEvent(keyboardEventSource: nil, virtualKey: CGKeyCode(keyCode), keyDown: true)
        let keyU = CGEvent(keyboardEventSource: nil, virtualKey: CGKeyCode(keyCode), keyDown: false)
        
        keyD?.post(tap: .cghidEventTap)
        keyU?.post(tap: .cghidEventTap)
    }
    
    public static func typeString(stringToType: String) {
        for c in stringToType.characters {
            pressKey(keyCode: (Key(rawValue: String(c))?.code)!)
        }
    }
}
