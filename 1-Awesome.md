# Here is Awesome 


There are some important concepts:
* Graphical User Interface(GUI): 
  - It is an interface that allow users to interact with the system in a visual manner.
  - GUIs typically have icons, windows, or graphics of some kind.
  - The part of the GUI that controls the way windows appear is called the **window manager**
* Windowing system(display server):
  - It is the core of most GUIs, most windowing systems use the WIMP structure(Windows, Icons, Menus, Pointer).
  - Windowing systems provide the basica framework for other parts of the GUI.
* X11 (X Window System Version 11)
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
* Desktop Environment:
  > It is a collection of software that provides a standard look and feel.
  - For example, the KDE Plasma Desktop uses the X11 windowing system, the KWin window manager, the Qt widget, the KDE display manager, and the KDE Software Compilatopm. 
 

* Screensaver:
  - It is special program that protect the screen from phosphor burn-in on CRT(tube-based monitors) and plasma monitors. 
  - However, they are also used for entertainment and security purposes. 
  - Screensavers can be set to activate when the workstation has not seen any activity from the user.
  - Screensavers would require a password to allow users to see the desktop and interact with the machine.
  - Screensavers may be simple like a solid color or they can be graphics intensive like a video game.


**Refers**
* [The structure of a gui](https://www.linux.org/threads/the-structure-of-a-gui.10399/)
