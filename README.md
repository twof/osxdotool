# osxdotool

osxdotool is a drop-in xdotool replacement for macOS users.

osxdotool utilizes [CLSwift](https://github.com/twof/CLSwift), a CLI framework for Swift. It should work well enough for baseline functionality, but use of flags and associated arguments hasn't been tested. I plan on addressing that when it becomes necissary. 

### Features
Below is a list of commands that need to be ported from xdotool. You can see a complete list [here](https://www.semicomplete.com/projects/xdotool/xdotool.xhtml). I'm aiming to get as much baseline functionality complete before dealing with flags and extra options, so you can assume anything checked off isn't complete, and anything not checked off isn't started

- [x] type
- [ ] mousemove
- [ ] mouseMoveRelative
- [ ] getMouseLocation
- [ ] click
- [ ] key
- [ ] mouseDown
- [ ] mouseUp
- [ ] search
- [ ] selectWindow
- [ ] behave
- [ ] getWindowPID
- [ ] getWindowName
- [ ] getWindowGeometry
- [ ] getWindowFocus
- [ ] windowSize
- [ ] windowMove
- [ ] windowFocus
- [ ] windowMap
- [ ] windowMinimize
- [ ] windowRaise
- [ ] windowReparent
- [ ] windowKill
- [ ] windowUnmap
- [ ] setWindow
- [ ] windowActivate
- [ ] getActiveWindow
- [ ] setNumDesktops
- [ ] getNumDesktops
- [ ] getDesktopViewport
- [ ] setDesktopViewport
- [ ] setDesktop
- [ ] getDesktop
- [ ] setDesktopForWindow
- [ ] getDesktopForWindow
- [ ] sleep
