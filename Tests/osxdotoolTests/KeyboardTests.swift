import XCTest
import CLSwift
@testable import osxdotool

class KeyboardTests: XCTestCase {
    // I honestly have no idea how to unit test most of these. Sorry everyone.
    // I'm just gonna run stuff and pass if nothing crashes
    
    // I need to find a way to test these without any typing actually happening
    func testTypeNothing() {
        let cc = CommandCenter(topLevelArgs: [
            Keyboard.type
        ])
        
        let commandline = ["/path/", "type", ""]
        
        let exec = cc.check(input: commandline)
        
        if let exec = exec {
            exec.execute(commandline: commandline)
        }
    }
    
    func testTypeSingleWord() {
        let cc = CommandCenter(topLevelArgs: [
            Keyboard.type
            ])
        
        let commandline = ["/path/", "type", "hello"]
        
        let exec = cc.check(input: commandline)
        
        if let exec = exec {
            exec.execute(commandline: commandline)
        }
    }
    
    func testTypeNoInput() {
        let cc = CommandCenter(topLevelArgs: [
            Keyboard.type
            ])
        
        let commandline = ["/path/", "type"]
        
        let exec = cc.check(input: commandline)
        
        if let exec = exec {
            exec.execute(commandline: commandline)
        }
    }
    
    // Expected output is "hello world!"
    func testTypeInputWithSpace() {
        let cc = CommandCenter(topLevelArgs: [
            Keyboard.type
            ])
        
        let commandline = ["/path/", "type", "hello world!"]
        
        let exec = cc.check(input: commandline)
        
        if let exec = exec {
            exec.execute(commandline: commandline)
        }
    }
    
    // Expected output is "hello world!"
    func testTypeInputWithTab() {
        let cc = CommandCenter(topLevelArgs: [
            Keyboard.type
            ])
        
        let commandline = ["/path/", "type", "hello\tworld!"]
        
        let exec = cc.check(input: commandline)
        
        if let exec = exec {
            exec.execute(commandline: commandline)
        }
    }
    
    // Expected output is "hello"
    // "world!"
    func testTypeInputWithNewline() {
        let cc = CommandCenter(topLevelArgs: [
            Keyboard.type
            ])
        
        let commandline = ["/path/", "type", "hello\nworld!"]
        
        let exec = cc.check(input: commandline)
        
        if let exec = exec {
            exec.execute(commandline: commandline)
        }
    }
    
    static var allTests = [
        ("testTypeNothing", testTypeNothing),
        ("testTypeSomething", testTypeSingleWord),
        ("testTypeInputWithSpace", testTypeNoInput),
        ("testTypeInputWithTab", testTypeNoInput),
        ("testTypeInputWithNewline", testTypeNoInput)
    ]
}
