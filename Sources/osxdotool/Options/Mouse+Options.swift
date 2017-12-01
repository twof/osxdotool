import CLSwift

extension Mouse {
    static let screen = Option<Int>(
        triggers: ["--screen"],
        help: "Move the mouse to the specified screen to move to.",
        numParams: .number(1)
    ) { (input, state) -> State in
        let windowId = input[0]
        var newState = state
        fatalError("screen not implemented")
        //        return state
    }
    
    static let polar = Flag(
        triggers: ["--polar"],
        help: "Use polar coordinates."
    ) { (state) -> State in
        var newState = state
        fatalError("polar not implemented")
        //        return state
    }
    
    static let sync = Flag(
        triggers: ["--sync"],
        help: "After sending the mouse move request, wait until the mouse is actually moved."
    ) { (state) -> State in
        var newState = state
        fatalError("sync not implemented")
        //        return state
    }
    
    static let repeats = Option<Int>(
        triggers: ["--repeat"],
        help: "Specify how many times to click.",
        numParams: .number(1)
    ) { (input, state) -> State in
        let numClicks = input[0]
        var newState = state
        fatalError("repeats not implemented")
        //        return state
    }
    
    static let shell = Flag(
        triggers: ["--shell"],
        help: "This makes getmouselocation output shell data you can eval"
    ) { (state) -> State in
        var newState = state
        fatalError("shell not implemented")
        //        return state
    }
}
