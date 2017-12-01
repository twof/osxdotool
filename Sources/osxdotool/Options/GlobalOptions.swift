import CLSwift

public enum GlobalOptions {
    static let window = Option<String>(
        triggers: ["--window"],
        help: "Send keystrokes to a specific window id.",
        numParams: .number(1)
    ) { (input, state) -> State in
        let windowId = input[0]
        var newState = state
        fatalError("window not implemented")
        //        return state
    }
    
    static let clearModifiers = Flag(
        triggers: ["--clearmodifiers"],
        help: "Clear modifiers before sending keystrokes."
    ) { (state) -> State in
        var newState = state
        fatalError("clearmodifiers not implemented")
        //        return state
    }
    
    static let delay = Option<Int>(
        triggers: ["--delay"],
        help: "Delay between keystrokes in miliseconds",
        numParams: .number(1)
    ) { (vals, state) -> State in
        var newState = state
        newState["delay"] = vals[0]
        return newState
    }
}
