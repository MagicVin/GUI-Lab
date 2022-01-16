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
|(start with "#" shows the root user, "$" shows the other user )|
