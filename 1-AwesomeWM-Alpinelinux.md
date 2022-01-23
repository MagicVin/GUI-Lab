Target: Create a desktop environment  
Window Manager: Awesome  
Desktop Manager: Lightdm  
Linux Distro: AlpineLinux 3.15  
Kernel: 5.15   
Date: Jan 15, 2022


**Let's Go!**


Packages to install:
* lightdm              -- the desktop manager
* lightdm-gtk-greeter  -- LightDM GTK Greeter is a greeter that has moderate requirements (GTK).
* awesome              -- the window manaer
* xorg-server          -- the X server
* lua                  -- programming language for awesome customization
* xterm                -- the default shell used by awesome
* terminus-font        -- font


|Reproduce the steps:|
|-------------------------------------------------------------------|
|1. # apk update|
|2. # setup-xorg-base|
|3. # apk add awesome xterm lua terminus-font|
|4. # apk add lightdm-gtk-greeter|
|5. # rc-update add dbus|
|6. # rc-service dbus start|
|7. # rc-update add lightdm|
|8. # rc-service lightdm start|
|9. # reboot|
|(start with "#" shows the root user, "$" shows the other user )|

**Filling the WM!**
SW list for the other components  
* File management:              apk search pcmanfm
* Image viewer:                 apk add feh feh-doc
* Draw:                         apk add gimp gimp-do
* Screen capture:               apk add imagemagick imagemagick-doc
* Chrome:                       apk add chromium
* Firefox:                      apk add firefox
* Menu:                         apk add dmenu
* Power:                        apk add acpi
* Screen lock:                  apk add xscreensaver xscreensaver-extras xscreensaver-gl-extras xfontsel
* Editor:                       apk add geany
* Bash:                         apk add bash
* WIFI:                         apk add wireless-tools wpa_supplicant


