//
//  ShiftKeyCode.swift
//  osxdotool
//
//  Created by fnord on 9/14/17.
//
//

import Foundation
import Carbon.HIToolbox

public enum ShiftRequiredKey: String, KeyType {
    case A
    case B
    case C
    case D
    case E
    case F
    case G
    case H
    case I
    case J
    case K
    case L
    case M
    case N
    case O
    case P
    case Q
    case R
    case S
    case T
    case U
    case V
    case W
    case X
    case Y
    case Z
    case exclamationPoint = "!"
    case at = "@"
    case pound = "#"
    case dollar = "$"
    case percent = "%"
    case caret = "^"
    case ampersand = "&"
    case asterisk = "*"
    case openParen = "("
    case closedParen = ")"
    
    public var code: UInt8 {
        switch self {
        case .A:
            return 0
        case .B:
            return 11
        case .C:
            return 8
        case .D:
            return 2
        case .E:
            return 14
        case .F:
            return 3
        case .G:
            return 5
        case .H:
            return 4
        case .I:
            return 34
        case .J:
            return 38
        case .K:
            return 40
        case .L:
            return 37
        case .M:
            return 46
        case .N:
            return 45
        case .O:
            return 31
        case .P:
            return 35
        case .Q:
            return 12
        case .R:
            return 15
        case .S:
            return 1
        case .T:
            return 16
        case .U:
            return 32
        case .V:
            return 9
        case .W:
            return 13
        case .X:
            return 7
        case .Y:
            return 17
        case .Z:
            return 6
        case .exclamationPoint:
            return UInt8(kVK_ANSI_1)
        case .at:
            return UInt8(kVK_ANSI_2)
        case .pound:
            return UInt8(kVK_ANSI_3)
        case .dollar:
            return UInt8(kVK_ANSI_4)
        case .percent:
            return UInt8(kVK_ANSI_5)
        case .caret:
            return UInt8(kVK_ANSI_6)
        case .ampersand:
            return UInt8(kVK_ANSI_7)
        case .asterisk:
            return UInt8(kVK_ANSI_8)
        case .openParen:
            return UInt8(kVK_ANSI_9)
        case .closedParen:
            return UInt8(kVK_ANSI_0)
        }
    }
}
