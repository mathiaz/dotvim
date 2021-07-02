"https://jezenthomas.com/shell-script-static-analysis-in-vim/
set makeprg=shellcheck\ -f\ gcc\ %
au BufWritePost * :silent make | redraw!
