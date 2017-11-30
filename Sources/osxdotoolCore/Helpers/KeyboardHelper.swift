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
            usleep(5000)
        }
        
        usleep(5000)
        
        for k in key.reversed() {
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
    
    public static func typeString(stringToType: String, delay: UInt32) throws {
        try stringToType.forEach { (c) in
            if !KeyConstants.typeableCharacters.contains(String(c)){
                throw InputError.invalidCharToType(c)
            }
        }
       
        for c in stringToType {
            let cString = String(c)
            
            if let key = ShiftRequiredKey(rawValue: cString) {
                pressKey(key: [ModifierKey.shift, key])
            } else if let key = Key(rawValue: cString) {
                pressKey(key: [key])
            } else {
                throw InputError.unsupportedCharToType(c)
            }
            
            usleep(delay * 1000)
        }
    }
}
