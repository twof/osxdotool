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
public typealias clError = CLSwift.InputError

public class Keyboard {
    //    public static let key
    
    //    public static let keyUp
    
    //    public static let keyDown
    
    public static let type = Argument<String>(argStrings: ["type"], state: ["delay": 12], numArgs: .number(1), associatedArguments: [delayFlag]) { (result) in
        switch result {
        case .success(let input, let state):
            let toType = input[0]
            guard let _delay = state["delay"] as? Int else {return}
            let delay = UInt32(_delay)
            
            do {
                try KeyboardHelper.typeString(stringToType: toType, delay: delay)
            } catch InputError.invalidCharToType(let c) {
                print("Error: ", c, " is not a typable character")
            } catch InputError.unsupportedCharToType(let c) {
                print("Error: ", c, " is not yet supported by osxdotool. Please submit a feature request on github")
            } catch {
                print("Error: Something else not catchable went wrong")
            }
        case .error(let error):
            switch error {
            case clError.invalidType(let message):
                print(message)
            case clError.tooFewArgs:
                do {
                    try KeyboardHelper.typeString(stringToType: "", delay: 0)
                }catch{
                    print("Error: Argument not supplied to `type`. You should never see this error")
                }
            default:
                print("Error: Some error uncaught in `type`")
            }
        }
    }
    
    /// Flags
    private static let delayFlag = Flag<Int>(argStrings: ["--delay"], numArgs: .number(1)) { (vals, state) -> [String : Any] in
        var newState = state
        newState["delay"] = vals[0]
        return newState
    }
}



