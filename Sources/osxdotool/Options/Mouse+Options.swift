import CLSwift

extension Mouse {
    enum Constant {
        static let polar = "polar"
    }
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
        state: [Constant.polar: false]
    ) { (state) -> State in
        var newState = state
        newState[Constant.polar] = true
        return newState
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
