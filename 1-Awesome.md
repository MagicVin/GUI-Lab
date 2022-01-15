# Here is Awesome 


There are some important concepts:
* Graphical User Interface(GUI): 
  - It is an interface that allow users to interact with the system in a visual manner.
  - GUIs typically have icons, windows, or graphics of some kind.
  - The part of the GUI that controls the way windows appear is called the **window manager**
* Windowing system(display server):
  - It is the core of most GUIs, most windowing systems use the WIMP structure(Windows, Icons, Menus, Pointer).
  - Windowing systems provide the basica framework for other parts of the GUI.
* [X Window System](https://en.wikipedia.org/wiki/X_Window_System)
  - The X Window System(X11, Or simply X) is a **Windowing system** for bitmap displays, common on Unix-like operating systems.
  - X provides the basic framework for a GUI environment: drawing and moving windows on the display device and interacting with a mouse and keyboard.
  - X originated as part of Project Athena at Massachusetts Institute of Technoligy(MIT) in 1984. The X protocol has been at version 11(X11) since September 1987.
  - The X.Org Foundation leads the X project, with the current reference implementation, X.Org Server, available as free and open source softwar under the MIT License and similar permissive license.  

![X](https://upload.wikimedia.org/wikipedia/commons/1/16/Xserver_and_display_manager.svg)  
In the X Window System, the X server runs on the computer in front of the user. The X server may connect to a display manager running on another computer, starting a session which may comprise a variety of programs running on that other computer. Relative to X server the XDM is a client.

* [X terminal](https://en.wikipedia.org/wiki/X_terminal)
  - In computing, an **X terminal** is a display/input terminal for **X Window System** client applications.
  - An X terminal runs as an **X Server**. In X, the usage of "client" and "Server" is from the viewpoint of the programs: 
    + the X server supplies a screen, keyboard, mouse and touchscreen to client applications. This connects to an "X display manager"(introduced in X11R3) running on a central machine, using XDMCP(X Display Manager Control Protocol, introduced in X11R4).
 
 * [X display manager](https://en.wikipedia.org/wiki/X_display_manager)
  - In the **X Window System**, an **X display manager** is a graphical **login manager** which starts a login session on an **X Server** from the same or another computer.
  - A display manager presents the user with a login screen. A seesion starts when a user successfully enters a valid combination username and password.
  - When the display manager runs on the user's computer, it starts the **X Server**before presenting the user the login screen, optionally repeating when the user logs out.




* X11 (X Window System Version 11)
  - X11 is a system which implements the X displat protocol.
  - It is a **protocol used** by the common windowing system called **Xorg** used on Linux systems.
* Xorg:
  - It is a **windowing system**, allows the movement of windows and input interactions(such as the mouse and keyboard)
* Xlib:
  - It is a **C Programming library** for interacting with display servers using the **X11 protocol**
* Widget-toolkit:
  > It is a set of software or a library that works with the window manager to design the window's appearance.
  > It defines how a window should appear.  
  
  - GTK
  - QT
  - SDL
  - AWT
  - Motif

* Display Manager:
  - It is the **login screen**. LightDM, KDM(KDE display manager), GDM(GNOME Display Manager), etc.
  - There are pieces of software that manage the appearance of the login screen.
  - It is a graphical login interfaces that allows users to login and choose the environment to load(if the user has more than one environment installed).
* Desktop Environment:
  - It is a collection of software that provides a standard look and feel.
  - For example, the KDE Plasma Desktop uses the X11 windowing system, the KWin window manager, the Qt widget, the KDE display manager, and the KDE Software Compilatopm.
  - It is the collection or a bundled package of various GUI components. Each component performs some function in producing a graphical way of interacting with your machine. 
  - The **Windowing system(think about Xorg)** is the lowest level portion of the GUI that controls the input interaction(mouse and keyboard).
  - The **Window manager** puts applications in designated portions of the screen called "windows".
  - The **Window manager** provides a way to change the window size. Users may also use the **Window manager** to close an application.
  - The **widget toolkits** provide a set(predefined) appearance that the **Window manger** should draw. Such toolkits tell the **Window manager** where to place the close, maximize, buttons, etc. and how they should appear.
  - Menus are also drawn by **Window managers** after a toolkit declares how the menu should appear. 
 

* Screensaver:
  - It is special program that protect the screen from phosphor burn-in on CRT(tube-based monitors) and plasma monitors. 
  - However, they are also used for entertainment and security purposes. 
  - Screensavers can be set to activate when the workstation has not seen any activity from the user.
  - Screensavers would require a password to allow users to see the desktop and interact with the machine.
  - Screensavers may be simple like a solid color or they can be graphics intensive like a video game.


**Refers**
* [The structure of a gui](https://www.linux.org/threads/the-structure-of-a-gui.10399/)
