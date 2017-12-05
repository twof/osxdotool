import CLSwift

extension Mouse {
    static let screen = Option<Int>(
        triggers: ["--screen"],
        help: "Move the mouse to the specified screen to move to.",
        state: ["screen": 0],
        numParams: .number(1)
    ) { (input, state) -> State in
        let windowId = input[0]
        var newState = state
        fatalError("screen not implemented")
        //        return state
    }
    
    static let polar = Flag(
        triggers: ["--polar"],
        help: "Use polar coordinates.",
        state: ["polar": false]
    ) { (state) -> State in
        var newState = state
        fatalError("polar not implemented")
        //        return state
    }
    
    static let quiesce = Option<Int>(
        triggers: ["--quiesce"],
        help: "Delay in milliseconds before the next command will run.",
        state: ["quiesce": 0],
        numParams: .number(1)
    ) { (input, state) -> State in
        let delay = input[0]
        var newState = state
        fatalError("quiesce not implemented")
        //        return state
    }
}
