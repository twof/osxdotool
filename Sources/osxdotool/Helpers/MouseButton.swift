//
//  MouseButton.swift
//  osxdotool
//
//  Created by fnord on 7/2/17.
//  Copyright © 2017 twof. All rights reserved.
//
import Cocoa

enum MouseButton: Int {
    case left
    case middle
    case right
    
    func click() {
        switch self {
        case .left:
            leftClick()
        case .middle:
            middleClick()
        case .right:
            rightClick()
        }
    }
    
    private func leftClick() {
        let kDelayUSec : useconds_t = 500_000
        
        let currentLoc = NSEvent.mouseLocation
        
        
        let mouseDown = CGEvent(mouseEventSource: nil, mouseType: .leftMouseDown, mouseCursorPosition: CGPoint(x: currentLoc.x, y: (NSEvent.mouseLocation.y - 900) * -1), mouseButton: .left)
        
        let mouseUp = CGEvent(mouseEventSource: nil, mouseType: .leftMouseUp, mouseCursorPosition: CGPoint(x: currentLoc.x, y: (NSEvent.mouseLocation.y - 900) * -1), mouseButton: .left)
        
        mouseDown?.post(tap: .cghidEventTap)
        usleep(kDelayUSec)
        mouseUp?.post(tap: .cghidEventTap)
    }
    
    private func rightClick() {
        let kDelayUSec : useconds_t = 500_000
        
        let currentLoc = NSEvent.mouseLocation
        
        
        let mouseDown = CGEvent(mouseEventSource: nil, mouseType: .rightMouseDown, mouseCursorPosition: CGPoint(x: currentLoc.x, y: (NSEvent.mouseLocation.y - 900) * -1), mouseButton: .right)
        
        let mouseUp = CGEvent(mouseEventSource: nil, mouseType: .rightMouseUp, mouseCursorPosition: CGPoint(x: currentLoc.x, y: (NSEvent.mouseLocation.y - 900) * -1), mouseButton: .right)
        
        mouseDown?.post(tap: .cghidEventTap)
        usleep(kDelayUSec)
        mouseUp?.post(tap: .cghidEventTap)
    }
    
    private func middleClick() {
        let kDelayUSec : useconds_t = 500_000
        
        let currentLoc = NSEvent.mouseLocation
        
        
        let mouseDown = CGEvent(mouseEventSource: nil, mouseType: .otherMouseDown, mouseCursorPosition: CGPoint(x: currentLoc.x, y: (NSEvent.mouseLocation.y - 900) * -1), mouseButton: .center)
        
        let mouseUp = CGEvent(mouseEventSource: nil, mouseType: .otherMouseUp, mouseCursorPosition: CGPoint(x: currentLoc.x, y: (NSEvent.mouseLocation.y - 900) * -1), mouseButton: .center)
        
        mouseDown?.post(tap: .cghidEventTap)
        usleep(kDelayUSec)
        mouseUp?.post(tap: .cghidEventTap)
    }
}
