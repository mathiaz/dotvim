" References:
"   https://github.com/scrooloose/vimfiles

"Use Vim settings, rather then Vi settings (much better!).
""This must be first, because it changes other options as a side effect.
set nocompatible

"necessary on some Linux distros for pathogen to properly load bundles
filetype off

"load pathogen managed plugins
call pathogen#helptags()
call pathogen#infect()

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"store lots of :cmdline history
set history=1000

"show incomplete cmds down the bottom
set showcmd
"show current mode down the bottom
set showmode

"find the next match as we type the search
set incsearch 

"hilight searches by default
set hlsearch
"dont wrap lines
set nowrap

"default indent settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

"load ftplugins and indent files
filetype plugin on
filetype indent on
 
"turn on syntax highlighting
syntax on
