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
  
  ## Resources
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
  * translations (class Translations)  
    Specifies the key and button bindings for menus, selections, "programmed strings", etc. The translations resource, which provides much of xterm's configurability, is a feature of the X Toolkit Intrinsics library(Xt).
  * copy-selection(destname [, ...])
    This action puts the currentlyselected text into all of the selections or cutbuffers specified by destname. Unlike select-end, it does not send a mouse position or otherwise modify the internal selection state.
  * insert-selection(sourcename [, ...])
    This action inserts the string found in the selection or cutbuffer indicated by sourcename. Sources are checked in the order given(case is significant) until one is found. Commonly-used selections include: PRIMARY, SECONDARY, and CLIPBOARD. Cut buffers are typically named CUT_BUFFER0 through CUT_BUFFER7.
  * larger-vt-font()
    Set the font to the next larger one, based on the font dimensions.
  * smaller-vt-font()
    Set the font to the next smaller one, based on the font dimensions.
  * scroll-back(count [,units] [,mouse])
    This action scrolls the text window backward so that text that had previously scrolled off the top of the screen is now visible.  
    The count argument indicates the number of units (which may be page, halfpage, pixel, or line) by which to scroll. If no count parameter is given, xterm uses the number of lines given by the scrollLines resource.  
    An adjustment can be specified for the page or halfpage units by appending a "+" or "-" sign followed by a number, e.g., page-2 to specify 2 lines less than a page.  
    If the second parameter is omitted "lines" is used.  
    If the third parameter mouse is given, the action is ignored when mouse reporting is enable.
  * scroll-forw(count [,units [,mouse]])
    This action is similar to scroll-back except that is scrolls in the other direction.
    
  ### Examples
  
  * Display the scrollBar
    ```
      XTerm.vt100.scrollBar: true
    ```  
  * Enable copy/paste if there is no `xclipboard` client support  
    (**Ctrl**+**Shift**+**C**: copy; **Ctrl**+**Shift**+**V**: paste)
    ```
      XTerm.vt100.translations:       #override \n \
         Ctrl Shift<KeyPress>C: copy-selection(CLIPBOARD) \n \
         Ctrl Shift<KeyPress>V: insert-selection(CLIPBOARD)
    ```
    > Checking for X11-clipboard support in terminal, check the result: ```vim --version```  
    > ***-clipboard*** or ***-xterm_clipboard***: clipboard does not support  
    > ***+clipboard*** or ***+xterm_clipboard***: clipboard does support  
      
  * **Ext** enable copy/paste  
    (**Shift**+**Home**|**Shift**+**Insert**|**Ctrl**+**Shift**+**C**: copy; **Ctrl**+**Shift**+**V**: paste )
    ```
      XTerm.vt100.translations:       #override        \n \
         Shift <Key>Home:     copy-selection(SELECT)   \n \
         Shift <Key>Insert:   copy-selection(SELECT)   \n \
         Ctrl Shift <Key>C:   copy-selection(SELECT)   \n \
         Ctrl Shift <Key>V:   insert-selection(SELECT) \n 
    ```  
  * Enable PageUp and PageDown Keys  
    (**Shift**+**PgUp**: page up; **Shift**+**PgDn**: page down)
    ```
      XTerm.vt100.translations:       #override           \n \
         Shift <KeyPress> Prior: scroll-back(1, halfpage) \n \
         Shift <KeyPress> Next : scroll-forw(1, halfpage) \n \  
    ```  
  * Enable switching between font size  
    (**Ctrl**+**+**: zoom in; **Ctrl**+**-**: zoom out)
    ```
      XTerm.vt100.translation:        #override   \n \
         Ctrl <Key>+:  larger-vt-font()            \n \
         Ctrl <Key>-:  smaller-vt-font()  
    ```
   ## Pointer Usage
   Once the VTxx window is created. xterm allows you to select text and copy it within the same or other windows using the pointer or the keyboard.  
   A "Pointer" could be a mouse, touchpad or similar device. X applications generally do not care, since they see only button events which have.  
   * position
   * button up/down state 

   Pointer button one(usually left) is used to save text into the cut buffer:
     ```
       ~Meta <Btn1Down>: select-start()
     ```
   Move the cursor to beginning of the text, and then hold the button down while moving the cursor to the end of the region and releasing the button. The selected text is highlighted and is saved in the global cut buffer and made the selection when the button is released:  
     ```
       <BtnUp>: select-end(SELECT, CUT_BUFFER0) \n
     ```
   
   Normally(but see the discussion of on2Clicks, etc):
   * Double-clicking selects by words
   * Triple-clicking selects by lines
   * Quadruple-clicking goes back to characters, etc.
   
   Pointer button two(usually middle)  
     "type"(pastes) the text from the given selection, if any, otherwise from the cut buffer, inserting it as keyboard input:  
       ```
         ~Ctrl ~Meta <Btn2Ip>: insert-selection(SELECT, CUT_BUFFER0)
       ```
   
   Pointer button three(usually right) extends the current selection  
     ```
       ~Ctrl ~Meta <Btn3Down>: start-extend()
     ```
     
   
   
 
