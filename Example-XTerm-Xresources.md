# XTerm - Terminal for X
  The xterm program is a terminal emulator for the X Window System. It provides DEC VT102/VT220 and selected features from higher-level terminals such as VT320/VT420/VT520 (VTxxx).  
  
  ## Emulations
  xterm provides usable emulations of related DEC terminals:
  * VT52 emulation is complete.
  * VT102 emulator is fairly complete, but does not support autorepeat(because that would affect the keyboard by other X clients).
    Double-size characters are displayed properly if your font server supports scalable bitmap fonts.
  * VT220 emulation does not support soft fonts, it is otherwise complete.
  * VT420 emulation(the default) supports controls manipulating rectangles of characters as well as left/right margins.
    Xterm does not support some other features which are not suitable for emulation, e.g., two-sessions.  
  Terminal database:
    * an optional platform-specific entry("xterm")
    * xterm
    * vt102
    * vt100
    * ansi
    * dumb
    
  XTerm automatically searches the terminal database in this order for those entries and then set the "TERM" variable(and the "TERMCAP" environment variable on a few older system). The alternatives after "xterm" are very old, from the 1980s.
   
