" https://github.com/dense-analysis/ale - Asynchronous Lint Engine
" https://github.com/dense-analysis/ale#generating-vim-help-files
" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

" https://github.com/dense-analysis/ale#2ii-fixing
" In ~/.vim/vimrc, or somewhere similar.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['black', 'isort'],
\   'terraform': ['terraform'],
\   'hcl': ['terraform'],
\}

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

" Use yamllint relaxed pre-defined configuration
" https://yamllint.readthedocs.io/en/stable/configuration.html#default-configuration
" https://github.com/dense-analysis/ale/issues/1646
let g:ale_yaml_yamllint_options='-d relaxed'

" https://black.readthedocs.io/en/stable/guides/using_black_with_other_tools.html#flake8
let g:ale_python_flake8_options = '--max-line-length=88 --extend-ignore=E203'

" https://www.reddit.com/r/vim/comments/l2y47c/comment/gkoni6l/?utm_source=share&utm_medium=web2x&context=3
let g:ale_linter_aliases = {
\ 'sls': 'salt'
\}

set number
syntax on
filetype plugin on

"https://www.vimfromscratch.com/articles/spell-and-grammar-vim/
autocmd FileType markdown setlocal spell
