syntax on
filetype plugin on

"https://black.readthedocs.io/en/stable/integrations/editors.html#vim
autocmd BufWritePre *.py execute ':Black'

"https://jezenthomas.com/shell-script-static-analysis-in-vim/
au QuickFixCmdPost [^l]* nested cwindow
au QuickFixCmdPost    l* nested lwindow
