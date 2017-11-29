//
//  ModifierKey.swift
//  osxdotool
//
//  Created by fnord on 9/14/17.
//
//

import Foundation
import Carbon.HIToolbox

public enum ModifierKey: String, KeyType {
    case shift
    case option
    case command
    case control
    case fn
    
    public var code: UInt8 {
        switch self {
        case .shift:
            return UInt8(kVK_Shift)
        case .option:
            return UInt8(kVK_Option)
        case .command:
            return UInt8(kVK_Command)
        case .control:
            return UInt8(kVK_Control)
        case .fn:
            return UInt8(kVK_Function)
        }
    }
}
