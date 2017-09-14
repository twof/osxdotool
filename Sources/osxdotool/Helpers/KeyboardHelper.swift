//
//  Keyboard.swift
//  osxdotool
//
//  Created by fnord on 9/13/17.
//
//

import Foundation

public class KeyboardHelper {
    
    static func pressKey(key: Key) {
        keyDown(key: key)
        keyUp(key: key)
    }
    
    static func keyDown(key: Key) {
        let keyD = CGEvent(keyboardEventSource: nil, virtualKey: CGKeyCode(key.code), keyDown: true)
        
        keyD?.post(tap: .cghidEventTap)
    }
    
    static func keyUp(key: Key) {
        let keyU = CGEvent(keyboardEventSource: nil, virtualKey: CGKeyCode(key.code), keyDown: false)
        
        keyU?.post(tap: .cghidEventTap)
    }
    
    public static func typeString(stringToType: String) throws {
        try stringToType.characters.forEach { (c) in
            if !self.typeableCharacters.contains(String(c)){
                throw InputError.invalidCharToType(c)
            }
        }
       
        for c in stringToType.characters {
            guard let key = Key(rawValue: String(c)) else {throw InputError.invalidCharToType(c)}
           
            pressKey(key: key)
        }
    }
}
