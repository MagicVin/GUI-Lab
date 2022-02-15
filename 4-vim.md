# vim theme config
There are three vim theme files: [PaperColor.vim](https://github.com/MagicVin/GUI-Lab/blob/main/PaperColor.vim) [abstract.vim](https://github.com/MagicVin/GUI-Lab/blob/main/abstract.vim) [seoul256.vim](https://github.com/MagicVin/GUI-Lab/blob/main/seoul256.vim)  

## How to apply them for vim?
1. mkdir -p ~/.vim/colors
2. cp seoul256.vim abstract.vim seoul256.vim ~/.vim/colors
3. echo colorscheme PaperColor >> ~/.vimrc

## The ~/.vimrc contents will be like:
```
set encoding=utf-8
set ts=2
set autoindent
set expandtab
syntax enable
set background=dark
set number
syntax on
colorscheme PaperColor
```
