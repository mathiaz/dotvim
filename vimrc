set number
syntax on
filetype plugin on

"https://black.readthedocs.io/en/stable/integrations/editors.html#vim
autocmd BufWritePre *.py execute ':Black'

"https://jezenthomas.com/shell-script-static-analysis-in-vim/
au QuickFixCmdPost [^l]* nested cwindow
au QuickFixCmdPost    l* nested lwindow

"https://www.nebulaworks.com/insights/posts/terraform-tips-vim-plugin-basics/
"https://github.com/hashivim/vim-terraform/blob/master/doc/terraform.txt
let g:terraform_fmt_on_save=1
"Overrides the indentation level to 2 spaces to conform to the hashicorp style:
let g:terraform_align=1

"https://www.vimfromscratch.com/articles/spell-and-grammar-vim/
autocmd FileType markdown setlocal spell
