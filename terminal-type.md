# Terminal Type
  Terminal type or emulation specifices how your computer and the host computer to which you are connected exchange information.  
  You need to set your terminal type so that both computers communicate in the same way.  
  Otherwise, your telnet, SSH, or terminal application will not have enough information to perform actions such as clearing the screen, moving the cursor around, and placing characters.  

The most commonly emulated terminal type is Digital Equipmet Corporation(DEC) VT100 terminal. Most PC and MacOS terminal emulation packages support this type.  

If the computer to which you connect does not automatically detect your terminal type, you'll need to set it manually.  
The procedury for doing so varies from system to system. Follow the steps below which pertain to your system.  

## UNIX
> Note: To determine your shell, at the UNIX prompt, enter `echo $SHELL`

On a Unix-like system, enter one of the following lines at your shell prompt, depending on the shell you use(be sure to capitalize the command correctly):
| **Shell** | **Command** |
|:----------|:------------|
| csh or tcsh | setenv TERM vt100 |
| sh          | TERM=vt100; export TERM |
| ksh, bash or zsh | export TERM=vt100 | 
