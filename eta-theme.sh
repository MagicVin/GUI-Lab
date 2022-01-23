#!/bin/bash

Theme() {
  VIM_THEME=(
    'set encoding=utf-8                                           ;'
    'set ts=2                                                     ;'
    'set autoindent                                               ;'
    'set expandtab                                                ;'
    'syntax enable                                                ;'
    'set background=dark                                          ;'
    'set number                                                   ;'
  )


  XTerm_THEME=(
    'UXTerm*termName:	xterm-256color                              ;'                        
    'XTerm*allowBoldFonts:	true                                  ;'
    'XTerm*termName:	xterm-256color                              ;'
    'XTerm.vt100.translations:	#override                \n \     ;'
    '   Shift <Key>Home:            copy-selection(SELECT)   \n \ ;'
    '   Shift <Key>Insert:          copy-selection(SELECT)   \n \ ;'
    '   Ctrl Shift <Key>C:          copy-selection(SELECT)   \n \ ;'
    '   Ctrl Shift <Key>V:          insert-selection(SELECT) \n \ ;'
    '   Ctrl <Key>+:                larger-vt-font()         \n \ ;'
    '   Ctrl <Key>-:                smaller-vt-font()        \n \ ;'
    '   Shift <KeyPress> Prior:     scroll-back(1, halfpage) \n \ ;'
    '   Shift <KeyPress> Next:      scroll-forw(1, halfpage) \n \ ;'

    'xterm*background:	#0c0c0c                                   ;'
    'xterm*color0:	#000000                                       ;'
    'xterm*color1:	#aa0000                                       ;'
    'xterm*color10:	#55ff55                                       ;'
    'xterm*color11:	#ffff55                                       ;'
    'xterm*color12:	#5555ff                                       ;'
    'xterm*color13:	#ff55ff                                       ;'
    'xterm*color14:	#55ffff                                       ;'
    'xterm*color15:	#ffffff                                       ;'
    'xterm*color2:	#00aa00                                       ;'
    'xterm*color3:	#aa5500                                       ;'
    'xterm*color4:	#0000aa                                       ;'
    'xterm*color5:	#aa00aa                                       ;'
    'xterm*color6:	#00aaaa                                       ;'
    'xterm*color7:	#aaaaaa                                       ;'
    'xterm*color8:	#555555                                       ;'
    'xterm*color9:	#ff5555                                       ;'
    'xterm*cursorColor:	#ffa530                                   ;'
    'xterm*faceName:	Monospace:size=11:antialias=true            ;'
    'xterm*foreground:	#aaaaaa                                   ;'
    'xterm*geometry:	80x25                                       ;'
  )
}

HelpMsg() {
  msg=(
    'usage: $0 [Function] [Agrs0] [Agrs1] [Agrs ...]              ;'
    '                                                             ;'
    ' Functions:                                                  ;'  
    ' vim                                                         ;'
    ' xterm                                                       ;'
  )
  echo "${msg[@]}" | sed 's/;/\n/g'
}

ETA_Main() {
  Theme
  case $1 in 
      "vim") echo "${VIM_THEME[@]}"   | sed 's/;/\n/g'            ;;
    "xterm") echo "${XTerm_THEME[@]}" | sed 's/;/\n/g'            ;;
          *) HelpMsg                                              ;;
  esac
}

ETA_Main $1
