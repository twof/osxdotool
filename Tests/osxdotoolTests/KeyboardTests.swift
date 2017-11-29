import XCTest
import CLSwift
import osxdotoolCore

class KeyboardTests: XCTestCase {
    // I honestly have no idea how to unit test most of these. Sorry everyone.
    // I'm just gonna run stuff and pass if nothing crashes
    
    // I need to find a way to test these without any typing actually happening
//    func testTypeNothing() {
//        let commandline = ["/path/", "type", ""]
//        let cc = CommandCenter(commands: [
//            Keyboard.type
//            ], input: commandline)
//        
//        let exec = cc.check()
//        
//        if let exec = exec {
//            exec.execute(commandline: cc.input)
//        }
//    }
//    
//    func testTypeSingleWord() {
//        let commandline = ["/path/", "type", "hello"]
//        let cc = CommandCenter(commands: [
//            Keyboard.type
//            ], input: commandline)
//        
//        let exec = cc.check()
//        
//        if let exec = exec {
//            exec.execute(commandline: cc.input)
//        }
//    }
//    
//    func testTypeNoInput() {
//        let commandline = ["/path/", "type"]
//        let cc = CommandCenter(commands: [
//            Keyboard.type
//            ], input: commandline)
//        
//        let exec = cc.check()
//        
//        if let exec = exec {
//            exec.execute(commandline: cc.input)
//        }
//    }
//    
//    // Expected output is "hello world!"
//    func testTypeInputWithSpace() {
//        let commandline = ["/path/", "type", "hello world!"]
//        let cc = CommandCenter(commands: [
//            Keyboard.type
//            ], input: commandline)
//        
//        let exec = cc.check()
//        
//        if let exec = exec {
//            exec.execute(commandline: cc.input)
//        }
//    }
//    
//    // Expected output is "hello world!"
//    func testTypeInputWithTab() {
//        let commandline = ["/path/", "type", "hello\tworld!"]
//        let cc = CommandCenter(commands: [
//            Keyboard.type
//            ], input: commandline)
//        
//        let exec = cc.check()
//        
//        if let exec = exec {
//            exec.execute(commandline: cc.input)
//        }
//    }
//    
//    // Expected output is "hello"
//    // "world!"
//    func testTypeInputWithNewline() {
//        let commandline = ["/path/", "type", "hello\nworld!"]
//        let cc = CommandCenter(commands: [
//            Keyboard.type
//            ], input: commandline)
//        
//        let exec = cc.check()
//        
//        if let exec = exec {
//            exec.execute(commandline: cc.input)
//        }
//    }
//    
//    static var allTests = [
//        ("testTypeNothing", testTypeNothing),
//        ("testTypeSomething", testTypeSingleWord),
//        ("testTypeInputWithSpace", testTypeNoInput),
//        ("testTypeInputWithTab", testTypeNoInput),
//        ("testTypeInputWithNewline", testTypeNoInput)
//    ]
}
