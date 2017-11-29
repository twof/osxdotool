//
//  Character+Helpers.swift
//  osxdotool
//
//  Created by fnord on 9/13/17.
//
//

public extension Character {
    var asciiValue: UInt32? {
        return String(self).unicodeScalars.filter{$0.isASCII}.first?.value
    }
}
