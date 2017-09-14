//
//  Type.swift
//  osxdotool
//
//  Created by fnord on 9/13/17.
//
//

import Foundation

public class Keyboard {
    public static let type = Argument<String>(argStrings: ["type"], minNumArgs: 1) { (toType) in
        guard let toType = toType else {return}
        KeyboardHelper.typeString(stringToType: toType[0])
    }
}
