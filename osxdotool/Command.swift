//
//  Command.swift
//  osxdotool
//
//  Created by fnord on 7/5/17.
//  Copyright © 2017 twof. All rights reserved.
//

import Foundation


enum Command {
    case mousemove(Double, Double)
    case mouseMoveRelative(Double, Double)
    case getMouseLocation
    case click(Int) 
}
