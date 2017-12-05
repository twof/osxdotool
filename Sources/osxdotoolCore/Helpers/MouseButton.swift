//
//  MouseButton.swift
//  osxdotool
//
//  Created by fnord on 7/2/17.
//  Copyright © 2017 twof. All rights reserved.
//
import Cocoa

public enum MouseButton: Int {
    case left
    case middle
    case right
    
    public func click(repeats: Int=1, delay: UInt32=12) {
        switch self {
        case .left:
            leftClick(repeats: repeats, delay: delay)
        case .middle:
            middleClick(repeats: repeats, delay: delay)
        case .right:
            rightClick(repeats: repeats, delay: delay)
        }
    }
    
    private func leftClick(repeats: Int=1, delay: UInt32=12) {
        let kDelayUSec : useconds_t = 500_000
        
        let currentLoc = NSEvent.mouseLocation
        
        
        let mouseDown = CGEvent(mouseEventSource: nil, mouseType: .leftMouseDown, mouseCursorPosition: CGPoint(x: currentLoc.x, y: (NSEvent.mouseLocation.y - 900) * -1), mouseButton: .left)
        
        let mouseUp = CGEvent(mouseEventSource: nil, mouseType: .leftMouseUp, mouseCursorPosition: CGPoint(x: currentLoc.x, y: (NSEvent.mouseLocation.y - 900) * -1), mouseButton: .left)
        
        for _ in 0..<repeats {
            mouseDown?.post(tap: .cghidEventTap)
            usleep(kDelayUSec)
            mouseUp?.post(tap: .cghidEventTap)
            usleep(delay)
        }
    }
    
    private func rightClick(repeats: Int=1, delay: UInt32=12) {
        let kDelayUSec : useconds_t = 500_000
        
        let currentLoc = NSEvent.mouseLocation
        
        
        let mouseDown = CGEvent(mouseEventSource: nil, mouseType: .rightMouseDown, mouseCursorPosition: CGPoint(x: currentLoc.x, y: (NSEvent.mouseLocation.y - 900) * -1), mouseButton: .right)
        
        let mouseUp = CGEvent(mouseEventSource: nil, mouseType: .rightMouseUp, mouseCursorPosition: CGPoint(x: currentLoc.x, y: (NSEvent.mouseLocation.y - 900) * -1), mouseButton: .right)
        
        for _ in 0..<repeats {
            mouseDown?.post(tap: .cghidEventTap)
            usleep(kDelayUSec)
            mouseUp?.post(tap: .cghidEventTap)
            usleep(delay)
        }
    }
    
    private func middleClick(repeats: Int=1, delay: UInt32=12) {
        let kDelayUSec : useconds_t = 500_000
        
        let currentLoc = NSEvent.mouseLocation
        
        
        let mouseDown = CGEvent(mouseEventSource: nil, mouseType: .otherMouseDown, mouseCursorPosition: CGPoint(x: currentLoc.x, y: (NSEvent.mouseLocation.y - 900) * -1), mouseButton: .center)
        
        let mouseUp = CGEvent(mouseEventSource: nil, mouseType: .otherMouseUp, mouseCursorPosition: CGPoint(x: currentLoc.x, y: (NSEvent.mouseLocation.y - 900) * -1), mouseButton: .center)
        
        for _ in 0..<repeats {
            mouseDown?.post(tap: .cghidEventTap)
            usleep(kDelayUSec)
            mouseUp?.post(tap: .cghidEventTap)
            usleep(delay)
        }
    }
}
