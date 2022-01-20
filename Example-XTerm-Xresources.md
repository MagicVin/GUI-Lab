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
   
  VT100 and VT102 emulations are commonly equated, though they actually differ. The VT102 provided controls for inserting and deleting lines.  
  More details to see `man xterm` (I don't want to type the words any more).
  
  ## Examples -- Resources
  XTerm understands all of the core X Toolkit resource names and classes.  
  Create a user profile file(~/.Xresources) if it does not exist, then add the following contents:   
  It also uses the X Toolkit resource types(such as booleans, colors, fonts, integers, and strings) along with their respective converters.
  Those resource types are not always sufficient:  
  * xterm's resource values may be lists of names. X Toolkit resource types do not include lists. Xterm uses a string for the resource, and parses it.  
  Comma-separated lists of names ignore case.    
  * xterm may defer processing a resource until it is needed. For example, font2 through font7 are loaded as needed, to start faster.  
  Again, the actual resource type is a string, parsed and used when needed.  
  
  ### Application specific resources(e.g., "XTerm.NAME")
  * termName(class TermName)  
    Specifies the terminal type name to be set in the TERM environment variable.
    ```
      XTerm.termName: vt100
    ```  
  
  ### VT100 Widget Resources(e.g., "XTerm.vt100.NAME") 
  If your xterm is configured to support the "toolbar", then those patterns need an extra level for the form-widget which holds the toolbar and vt100 widget. A wildcard between the top-level "XTerm" and the "vt100" widget makes the resource settings work for either, e.g., "XTerm*vt100.NAME".  
  * scrollBar (class ScrollBar)  
    Specifies whether or not the scrollbar should be displayed. the default is "false".  
    ```
      XTerm.vt100.scrollBar: true
    ```

  * translations (class Translations)  
    Specifies the key and button bindings for menus, selections, "programmed strings", etc. The translations resource, which provides much of xterm's configurability, is a feature of the X Toolkit Intrinsics library(Xt).  
    
    Enable copy/paste while there is no `xclipboard` client support  
    ```
      XTerm.VT100.translations:       #override \n \
         Ctrl Shift<KeyPress>C: copy-selection(CLIPBOARD) \n \
         Ctrl Shift<KeyPress>V: insert-selection(CLIPBOARD)
    ```
    > Checking for X11-clipboard support in terminal 
    > Check the output of ```vim --version```  
    > ***-clipboard*** or ***-xterm_clipboard***: clipboard does not support  
    > ***+clipboard*** or ***+xterm_clipboard***: clipboard does support. 
      
