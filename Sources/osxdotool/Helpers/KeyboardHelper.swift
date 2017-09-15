//
//  Keyboard.swift
//  osxdotool
//
//  Created by fnord on 9/13/17.
//
//

import Foundation

public class KeyboardHelper {
    
    static func pressKey(key: [KeyType]) {
        for k in key {
            keyDown(key: k)
        }
        
        for k in key {
            keyUp(key: k)
        }
    }
    
    static func keyDown(key: KeyType) {
        let keyD = CGEvent(keyboardEventSource: nil, virtualKey: CGKeyCode(key.code), keyDown: true)
        
        keyD?.post(tap: .cghidEventTap)
    }
    
    static func keyUp(key: KeyType) {
        let keyU = CGEvent(keyboardEventSource: nil, virtualKey: CGKeyCode(key.code), keyDown: false)
        
        keyU?.post(tap: .cghidEventTap)
    }
    
    public static func typeString(stringToType: String) throws {
        try stringToType.characters.forEach { (c) in
            if !KeyConstants.typeableCharacters.contains(String(c)){
                throw InputError.invalidCharToType(c)
            }
        }
       
        for c in stringToType.characters {
            let cString = String(c)
            
            if let key = ShiftRequiredKey(rawValue: cString) {
                pressKey(key: [ModifierKey.shift, key])
            } else if let key = Key(rawValue: cString) {
                pressKey(key: [key])
            } else {
                throw InputError.unsupportedCharToType(c)
            }
        }
    }
}
