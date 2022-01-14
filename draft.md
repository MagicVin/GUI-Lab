
# Linux Graphical Desktop
## [Get to Know Linux: Desktop Environment vs. Window Manager](https://www.ghacks.net/2008/12/09/get-to-know-linux-desktop-environment-vs-window-manager/)
* X Windows - This is the foundation that allows for graphic elements to be drawn on the display. X Windows builds the primitive framework that allows moving of windows, interactions with keyboard and mouse, and draws windows. This is required for any graphical desktop.
* Windows Manager - The Window Manager is the piece of the puzzle that controls the placement and appearance of windows. Window Managers including: Enlightenment, Afterstep, FVWM, Fluxbox, IceWM, etc. Requires X Windows but not a desktop environment.
* Desktop Envrionment - This is where it begins to get a little fuzzy for some. A Desktop Environment includes a Window Manager but builds upon it. The Desktop Environment typically is a far more fully integrated system than a Window Manager. Requires both X Windows and a Window Manager.

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
