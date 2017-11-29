//
//  KeyCode.swift
//  osxdotool
//
//  Created by fnord on 7/2/17.
//  Copyright © 2017 twof. All rights reserved.
//

import Foundation
import Carbon.HIToolbox

public protocol KeyType {
    var code: UInt8 {get}
}

public enum Key: String, KeyType {
    case a
    case b
    case c
    case d
    case e
    case f
    case g
    case h
    case i
    case j
    case k
    case l
    case m
    case n
    case o
    case p
    case q
    case r
    case s
    case t
    case u
    case v
    case w
    case x
    case y
    case z
    case space = " "
    case backSlash = "\\"
    case slash = "/"
    case newLine = "\n"
    case tab = "\t"
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    
    public var code: UInt8 {
        switch self {
        case .a:
            return 0
        case .b:
            return 11
        case .c:
            return 8
        case .d:
            return 2
        case .e:
            return 14
        case .f:
            return 3
        case .g:
            return 5
        case .h:
            return 4
        case .i:
            return 34
        case .j:
            return 38
        case .k:
            return 40
        case .l:
            return 37
        case .m:
            return 46
        case .n:
            return 45
        case .o:
            return 31
        case .p:
            return 35
        case .q:
            return 12
        case .r:
            return 15
        case .s:
            return 1
        case .t:
            return 16
        case .u:
            return 32
        case .v:
            return 9
        case .w:
            return 13
        case .x:
            return 7
        case .y:
            return 17
        case .z:
            return 6
        case .space:
            return UInt8(kVK_Space)
        case .slash:
            return UInt8(kVK_ANSI_Slash)
        case .backSlash:
            return UInt8(kVK_ANSI_Backslash)
        case .newLine:
            return UInt8(kVK_Return)
        case .tab:
            return UInt8(kVK_Tab)
        case .one:
            return UInt8(kVK_ANSI_1)
        case .two:
            return UInt8(kVK_ANSI_2)
        case .three:
            return UInt8(kVK_ANSI_3)
        case .four:
            return UInt8(kVK_ANSI_4)
        case .five:
            return UInt8(kVK_ANSI_5)
        case .six:
            return UInt8(kVK_ANSI_6)
        case .seven:
            return UInt8(kVK_ANSI_7)
        case .eight:
            return UInt8(kVK_ANSI_8)
        case .nine:
            return UInt8(kVK_ANSI_9)
        case .zero:
            return UInt8(kVK_ANSI_0)
        }
    }
}
