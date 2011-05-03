setlocal tabstop=2 shiftwidth=2 expandtab tw=80
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter *.pp match ExtraWhitespace /\s\+$/
autocmd InsertEnter *.pp match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave *.pp match ExtraWhitespace /\s\+$/
autocmd BufWinLeave *.pp call clearmatches()
