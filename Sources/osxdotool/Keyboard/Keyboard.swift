//
//  Type.swift
//  osxdotool
//
//  Created by fnord on 9/13/17.
//
//

import Foundation
import CLSwift

//In the order they appear in xdotool man pages

public class Keyboard {
    //    public static let key
    
    //    public static let keyUp
    
    //    public static let keyDown
    
    public static let type = Argument<String>(argStrings: ["type"], minNumArgs: 1) { (toType) in
        guard let toType = toType else {return}
        KeyboardHelper.typeString(stringToType: toType[0])
    }
}
