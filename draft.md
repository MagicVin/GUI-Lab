# Window manager
## Layers of the graphical user interface [Wiki](https://en.wikipedia.org/wiki/Window_manager)

[Arch Wiki:](https://wiki.archlinux.org/title/window_manager) A window manager (WM) is system software that controls the placement and appearance of windows within a windowing system in a graphical user interface (GUI). It can be part of a desktop environment (DE) or be used standalone.
Window managers are unique to Xorg. The equivalent of window managers on Wayland are called compositors because they also act as compositing window managers.

![stru](https://upload.wikimedia.org/wikipedia/commons/9/95/Schema_of_the_layers_of_the_graphical_user_interface.svg)
![windows](https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Window_%28windowing_system%29.svg/512px-Window_%28windowing_system%29.svg.png)


**Imaging from people**  
[DevynCJohnson:](https://www.linux.org/threads/the-structure-of-a-gui.10399/) Under X, the window manager and the display server are two distinct programs;
A Graphical User Interface (GUI) is an interface that allows users to interact with the system in a visual manner. GUIs typically have icons, windows, or graphics of some kind. An alternative to GUIs are command-lines which may also be called CLIs (Command-Line Interfaces) or CUIs (Console USer Interfaces). An example of this is DOS, FreeDOS, Bash, many server distros, etc. Basically, with a CLI, users interact with the machine through text. Users type a command and the machine performs the action and provides text as the output.
The core of most GUIs is a windowing system (sometimes called a display server). Most windowing systems use the WIMP structure (Windows, Icons, Menus, Pointer). X11 is a protocol used by the common windowing system called Xorg used on Linux systems. Xorg, like other windowing systems, allows the movement of windows and input interactions (such as the mouse and keyboard). Windowing systems provide the basic framework for other parts of the GUI. Windowing systems do not control the appearance of the GUI. Rather, the windowing system offers the core functionality. Examples of display managers include SurfaceFlinger, Quartz, XFree86, and Weston


[Archna Khubchandani:](https://study.com/academy/lesson/linux-gui-components-x-windows-configuration.html) An interface that allows users to interact with the system visually through icons, windows, or graphics is a GUI. 
While the kernel is the heart of Linux, *the face* of the operating system is the graphical environment provided by the X Window System or X.
