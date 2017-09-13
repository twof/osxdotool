//
//  Command.swift
//  osxdotool
//
//  Created by fnord on 7/5/17.
//  Copyright © 2017 twof. All rights reserved.
//

import Foundation



// TODO: Init with command string

class Command {
    func my() {
        
    }
}

//enum Command {
//    init(params: [String]) {
//        if params.count > 0 {
//            let commmandString = params[0]
//            switch commandString {
//            case "mousemove":
//            case "mousemove_relative":
//            case "getmouselocation":
//            case "click":
//            case "key":
//            case "type":
//            default:
//            }
//        }
//        
//    }
//    
//    case mousemove([String])
//    case mouseMoveRelative([String])
//    case getMouseLocation([String])
//    case click([String])
//    case key([String])
//    case type([String])
//    case mouseDown([String])
//    case mouseUp([String])
//    case search([String])
//    case selectWindow([String])
//    case behave([String])
//    case getWindowPID([String])
//    case getWindowName([String])
//    case getWindowGeometry([String])
//    case getWindowFocus([String])
//    case windowSize([String])
//    case windowMove([String])
//    case windowFocus([String])
//    case windowMap([String])
//    case windowMinimize([String])
//    case windowRaise([String])
//    case windowReparent([String])
//    case windowKill([String])
//    case windowUnmap([String])
//    case setWindow
//    case windowActivate
//    case getActiveWindow
//    case setNumDesktops
//    case getNumDesktops
//    case getDesktopViewport
//    case setDesktopViewport
//    case setDesktop
//    case getDesktop
//    case setDesktopForWindow
//    case getDesktopForWindow
//    case sleep
//    //case exec //unimplemented unless someone really wants it. seems dangerous
//    
//    
//    func run() {
//        do{
//            switch self {
//            case let .mousemove(params):
//                try validate(params: params, minNumParams: 2, expectedType: Int.self)
//            default:
//                <#code#>
//            }
//        }catch{
//            
//        }
//        
//    }
//    
//    func validate<T>(params: [String], minNumParams: Int, expectedType: T.Type) throws -> [T]{
//        if params.count < minNumParams {
//            throw InputError.tooFewArgs
//        }
//        
//        var castedParams = [T]()
//        
//        for param in params {
//            guard let x: T = T(param) else {throw InputError.invalidType(param, T.self)}
//        }
//    }
//}
//
//
///*
// Chain of Command (heh):
// Validate input:
//    Valid command:
//        Extract flags:
//        Correct count:
//        Correct type:
//            Success:
//                Execute
//            Failure:
//                Throw error. Print usage
// */
