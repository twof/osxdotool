import AppKit
import CLSwift

// https://developer.apple.com/documentation/appkit/nsscreen

public class Desktop {
//    public static let windowActivate
    
//    public static let getActiveWindow
    
    public static let getNumDesktops = Command<Bool>(
        triggers: ["get_num_desktops"],
        help: "Output the current number of desktops.",
        numParams: .none
    ) { (_, _) in
        print(NSScreen.screens.count)
    }
    
//    public static let setNumDesktops
    
//    public static let getDesktopViewport
    
//    public static let setDesktopViewport
    
//    public static let setDesktop
    
//    public static let getDesktop
    
//    public static let setDesktopForWindow
    
//    public static let getDesktopForWindow
}
