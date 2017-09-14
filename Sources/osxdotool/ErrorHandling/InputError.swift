//
//  InputException.swift
//  osxdotool
//
//  Created by fnord on 9/14/17.
//
//

import Foundation

enum InputError: Error {
    
    case invalidType(String)
    case invalidCharToType(Character)
    case tooFewArgs
    case invalidCommand
    case unimplimented
}
