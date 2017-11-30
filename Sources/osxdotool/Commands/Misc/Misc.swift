import Foundation
import CLSwift

public class Misc {
    public static let sleep = Command<Float>(triggers: ["sleep"],
                                             help: "Sleep for a specified period. Fractions of seconds (like 1.3, or 0.4) are valid, here.",
                                             numParams: .number(1)
    ) { (input, _) in
        let numSeconds = Int(input[0] * 1000)
        usleep(useconds_t(numSeconds))
    }
}
