//
//  InputException.swift
//  osxdotool
//
//  Created by fnord on 9/14/17.
//
//

import Foundation

public enum InputError: Error {
    
    case invalidType(String)
    case invalidCharToType(Character)
    case unsupportedCharToType(Character)
    case tooFewArgs
    case invalidCommand
    case unimplimented
}
