" -----------------------------
" Markdown Documentation editor
" -----------------------------
Plug 'godlygeek/tabular' "| Plug 'tpope/vim-markdown'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/mathjax-support-for-mkdp'
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
" provides a lot of useful snippets for Markdown files
Plug 'SirVer/ultisnips' 
" DITAA ASCII Art generator for Markdown
Plug 'vim-scripts/ditaa'


" ## CODING LANGUAGES ##
" Rust-lang plugin
Plug 'rust-lang/rust.vim'
"
Plug 'mattn/webapi-vim' "


" READING ASSISTANTS:
"
" Limelight, enlightens parts of text.
Plug 'junegunn/limelight.vim'
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1




" ## Autocompletes ##
" COC
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
"
    " Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
"
" Warning:
" - Needs nodejs, npm, and a lot of other things more...

" ## Fuzzy Finder ##
" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"
 

" STILL UNDER TESTING
"Plug 'vim-syntastic/syntastic'
"Plug 'vhdirk/vim-cmake'
Plug 'skywind3000/asyncrun.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'ludovicchabant/vim-gutentags'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'ryanoasis/vim-devicons'
"Plug 'bfrg/vim-cpp-modern'

