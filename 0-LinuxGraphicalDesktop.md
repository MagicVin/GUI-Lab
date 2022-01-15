
# Linux Graphical Desktop
## [Get to Know Linux: Desktop Environment vs. Window Manager](https://www.ghacks.net/2008/12/09/get-to-know-linux-desktop-environment-vs-window-manager/)
* X Windows - This is the foundation that allows for graphic elements to be drawn on the display. X Windows builds the primitive framework that allows moving of windows, interactions with keyboard and mouse, and draws windows. This is required for any graphical desktop.
* Windows Manager - The Window Manager is the piece of the puzzle that controls the placement and appearance of windows. Window Managers including: Enlightenment, Afterstep, FVWM, Fluxbox, IceWM, etc. Requires X Windows but not a desktop environment.
* Desktop Envrionment
  > DE = Windowing system(Xorg) + Window Manager(Awesome) + Widget toolkit(Qt, GTK) + Display Manager(lightDM) + other softwares  
  - It is a collection of software that provides a standard look and feel.
  - For example, the KDE Plasma Desktop uses the X11 windowing system, the KWin window manager, the Qt widget, the KDE display manager, and the KDE Software Compilation.
  - It is the collection or a bundled package of various GUI components. Each component performs some function in producing a graphical way of interacting with your machine.
  - The Windowing system(think about Xorg) is the lowest level portion of the GUI that controls the input interaction(mouse and keyboard).
  - The Window manager puts applications in designated portions of the screen called "windows".
  - The Window manager provides a way to change the window size. Users may also use the Window manager to close an application.
  - The widget toolkits provide a set(predefined) appearance that the Window manger should draw. Such toolkits tell the Window manager where to place the close, maximize, buttons, etc. and how they should appear.
  - Menus are also drawn by Window managers after a toolkit declares how the menu should appear.


![stru](https://upload.wikimedia.org/wikipedia/commons/9/95/Schema_of_the_layers_of_the_graphical_user_interface.svg)
![windows](https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Window_%28windowing_system%29.svg/512px-Window_%28windowing_system%29.svg.png)

| The main Desktop Environments | looks like     |
| :-----------------------------| :--------------|
| The lastest default GNOME     | OS X           |
| KED 3.x                       | Windows XP     |    
| KED 4.x                       | Windows Vista  |



<table>
  <tr>
    <th colspan="6">Desktop Environments and Window Manager based on X11 or Wayland
    <a href=https://en.wikipedia.org/wiki/Enlightenment_(software)>Wiki</a>
    </th>
   </tr>
  <tr>
    <td rowspan="3">Desktop Environments</td>
    <td>GTK-based</td>
    <td>GNOME</td>
    <td>LXDE</td>
    <td>MATE</td>
    <td>XFCE</td>
  </tr>
  <tr>
    <td>Qt-based</td>
    <td>Deepin</td>
    <td>Lumina</td>
    <td>LXQt</td>
    <td>Trinity</td>
  </tr> 
  <tr>
    <td>Other</td>
    <td>EDE(FLTK-based)</td>
    <td>OpenWindows(OLIT-based)</td>
    <td>Enlightenment(EFL-based)</td>
    <td>UDE(Xlib/XCB-based)</td>
  </tr>
  <tr>
    <td>Graphical Shells</td>
    <td>Deepin</td>
    <td>GNOME Shell</td>
    <td>KED Plasma 4&5</td>
    <td>Unity</td>
    <td>Maynard</td>
  </tr>
  <tr>
    <td rowspan="3">X Window Managers</td>
    <td>Compositing</td>
    <td>Compiz</td>
    <td>KWin</td>
    <td>Enlightenment</td>
    <td>XFWM</td>
  </tr>
  <tr>
    <td>Stacking</td>
    <td>Fluxbox</td>
    <td>OpenBox</td>
    <td>4Dwm</td>
    <td>FVWM</td>
  </tr> 
  <tr>
    <td>Tiling</td>
    <td>awesome</td>
    <td>dwm</td>
    <td>i3</td>
    <td>bspwm</td>
  </tr> 
</table>

## [Difference: Desktops Environments and Window Managers](https://www.engadget.com/2012-10-30-how-to-picking-a-window-manager-linux.html)
A Desktop Environment is a fully featured graphical user interface to aid with the interaction with your operating system. DEs typically provide a handful of applications bundled together to accomplish tasks in a graphical manner as opposed to using the command line. They often come with a desktop shell, which is a place to hold your fancy shortcut icons, as well as other tools such as file managers. Think Windows' Explorer or OS X 's Finder. And of course, a DE provides a means to manage your currently open application windows. Said differently, a Desktop Environment also provides a Window Manager.

A Window Manager, on the other hand, has the much more streamlined task of simply managine how you interact with your application windows without all of the extra bloat. WM's are often designed to be highly customizable via configuration files or graphical settings tools, and typically do a single job: managing your application windows. That is, they provide a method to start an application, move a window around, resize your application window and close said window.

## [Desktop environment](engadget.com/2012-11-30-how-to-pick-a-desktop-environment-in-linux.html)
> A desktop environment is an implementation of a graphical user interface commonly mimicking a physical desktop. A desktop environment also encompassess a slew of other tools to assist you in graphical computing.

Another important tibit of information here is that a DE utilizes a widget toolkit, which provides a set of controls that display information to the user, like a window box. There are two big ones here, **GTK(The Gimp Toolkit) and Qt**, which is technically more than just a widget toolkit.
