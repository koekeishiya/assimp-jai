#if OS == .WINDOWS {
    #load "windows.jai";
} else #if OS == .MACOS {
    #load "macos.jai";
} else {
    #assert false;
}
