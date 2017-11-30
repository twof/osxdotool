//
//  main.swift
//  osxdotool
//
//  Created by fnord on 7/2/17.
//  Copyright © 2017 twof. All rights reserved.
//

import Foundation
import Cocoa
import CLSwift


let commandCenter = CommandCenter(commands: [
    Keyboard.type,
    Mouse.mouseMove,
    Misc.sleep
])

let executedCommand = commandCenter.check()

if let executedCommand = executedCommand {
    executedCommand.execute(commandline: commandCenter.input)
}
