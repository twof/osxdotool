import ApplicationServices
import CoreGraphics
import Carbon

public struct Window {
    let applicationName: String
    let windowName: String
    let pid: Int
}


public class AccessibilityHelper {
    public func getWindow(at point: CGPoint) -> Window {
        let systemWideElement = AXUIElementCreateSystemWide()
        var elementAtPosition: UnsafeMutablePointer<AXUIElement?> = UnsafeMutablePointer<AXUIElement?>.allocate(capacity: 1)
        var windowTitle: UnsafeMutablePointer<AnyObject?> = UnsafeMutablePointer<AnyObject?>.allocate(capacity: 1)
        var applicationElement: UnsafeMutablePointer<AnyObject?> = UnsafeMutablePointer<AnyObject?>.allocate(capacity: 1)
        var applicationName: UnsafeMutablePointer<AnyObject?> = UnsafeMutablePointer<AnyObject?>.allocate(capacity: 1)
        var windowPID: UnsafeMutablePointer<pid_t> = UnsafeMutablePointer<pid_t>.allocate(capacity: 1)
        
        
        AXUIElementCopyElementAtPosition(systemWideElement, 0, 0, elementAtPosition)
        
        AXUIElementCopyAttributeValue(elementAtPosition.pointee!,
                                      "AXParent" as CFString,
                                      applicationElement)
        
        AXUIElementCopyAttributeValue(applicationElement.pointee,
                                      "AXTitle" as CFString,
                                      applicationName)
        
        AXUIElementCopyAttributeValue(elementAtPosition.pointee!,
                                      "AXTitle" as CFString,
                                      windowTitle)
        AXUIElementGetPid(elementAtPosition.pointee as! AXUIElement, windowPID)
        
        let _pid: Int = Int(windowPID.pointee)
        let _window: String = windowTitle.pointee as! CFString
        let _application: String = applicationName.pointee as! CFString
        
        let window = Window(applicationName: _application, windowName: _window, pid: _pid)
    }
}
