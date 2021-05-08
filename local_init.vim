" @author: Albert Domingo
" Local Configurations

" NERDTREE:
" Open Nerdtree automatically
"autocmd vimenter * NERDTree
" Close Nerdtree if no files specified
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Nerdtree behavior
map <C-n> :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
" Nerdtree default size
:let g:NERDTreeWinSize=20
" Automatically-close-nerdtree-when-opening-file
let g:NERDTreeQuitOnOpen = 1



" TAGLIST:
" Taglist default size
:let g:Tlist_WinWidth=20
" Taglist opens when Filetype is acceptable
autocmd FileType c,cpp,h,py let Tlist_Auto_Open=1
" TODO: 
"       sudo apt-get install clangd-10
"       sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-10 100
"

" AIRLINE:
let g:airline_powerline_fonts = 1  " Not working by now...
    " needs : git clone git://github.com/powerline/fonts.git "
    " ./install.sh "

" APPEARANCE:
" Theoretically to have 256 colors
    " set t_Co=256  Already in init.vim
"set t_AB=^[[48;5;%dm
"set t_AF=^[[38;5;%dm

" "## APPAREANCE  ##
" Appareance and color
" set background=light
 highlight Comment ctermfg=DarkCyan
" highlight Comment guifg=#ABCD // SetHexColour
" highlight Normal ctermfg=24
" highlight Normal ctermbg=23
"
" COLOURS:
" Solarized
syntax enable
if has('gui_running')
    set background=light
else
    set background=dark
endif
" set background=dark
colorscheme solarized
" let g:solarized_termtrans 0|1
"
"
    "If you are going to use Solarized in Terminal mode (i.e. not in a GUI version like gvim or macvim), please please please consider setting your terminal emulator's colorscheme to used the Solarized palette "
    " let g:solarized_termcolors=256 : Downgrades the colors..
"------------------
" CODING LANGUAGES:
" ----------------

" Maybe this should be in init.vim only?
" Rust-lang plugin
Plug 'rust-lang/rust.vim'
"
"Semantic Highlighting for C, Rust,...
Plug 'jaxbot/semantic-highlight.vim'
"
"Bitbake.vim
Plug 'kergoth/vim-bitbake'


" FINDING FILES:
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**
" Display all matching files when we tab complete
set wildmenu
" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy
" THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer


" # C CMAKE
set makeprg=cmakedbg
" Then
" :make

"
" Tagbar:            
let g:tagbar_ctags_bin ="/usr/bin/ctags-exuberant"




" MOUSE CONTROL:
"
set mouse=nic
" * In Normal mode you can change from splits in a click and move to another
" line.
" * In Visual mode + Ctrl it allows to free-select a block and copy it on the
" System clipboard or the same clipboard. Use scrollwheel to paste.

"
" Mouse Free Selection Ctrl+LeftMouse
nnoremap <A-S-LeftMouse> mz<LeftMouse><C-v>g`zo<C-g>
inoremap <A-S-LeftMouse> <Esc><C-v>g`^mz<Esc>gi<LeftMouse><C-o><C-v>g`zo<C-g>
vnoremap <A-S-LeftDrag> <LeftDrag>
vnoremap <A-S-LeftMouse> <C-v><LeftMouse>mzgvg`z<C-g>


" ## USAGE ##
" Forget old VI commands
set nocompatible
" Disable ^S locks 
" stty -ixon" 


"*****************************************************************************
"" Commands   
"***************************************************************************** 
" remove trailing whitespaces
command! FixEndOfLine :%s/\r\(\n\)/\1/g


" WINDOWS CONTROL:
" Term mode -> Normal mode
" <Esc> was a good idea but into Term:vim then "Inception-effect"
:tnoremap <C-w> <Esc><C-\><C-n><C-w>
" ESC + INSERT MODE 
    " Think about it....<a> <Esc><a> this will be a mess!
" Term in split window by default
" split | term
"

" NEW FEATURES:
"
"
"
" Automatically fix the last misspelled word and jump back to where you were.
" Taken from this talk: https://www.youtube.com/watch?v=lwD8G1P52Sk
nnoremap <leader>sp :normal! mz[s1z=`z<CR>

"
" .............................................................................
" plasticboy/Vim-markdown
" .............................................................................
" disable header folding
let g:vim_markdown_folding_disabled = 1

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0

" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1

" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format

" .............................................................................
" iamcco/markdown-preview.nvim
" .............................................................................
"
" !! First Time !! 
" :call mkdp#util#install()
"
"
let g:mkdp_markdown_css='/home/vojtech/.local/lib/github-markdown-css/github-markdown.css'

" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 0

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 1

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'
"
" iamcco/markdown-preview END





" ------------------
"  Ultisnips
"  -----------------
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"  " use <Tab> trigger autocompletion
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" ------------------
" COC Autocompletion
"  -----------------
" Jump to defintion
    "nmap <leader>gd <Plug>(coc-definition)
" Finding references
    "nmap <leader>gr <Plug>(coc-references)
" Open any file quickly 
    "nnoremap <C-p> :GFiles<CR>
"
"
    "let g:coc_disable_startup_warning = 1

" COC needs a config file
" if filereadable(expand("~/.config/nvim/coc_config.vim"))  
"    source ~/.config/nvim/coc_config.vim
" endif




"-----------------------------------
" Other things needed
"----------------------------------
" * checkhealth Warning clipboard
"       sudo apt-get install xclip
"
" * coc.nvim yarn lockfrozen Warning and node.js
"       npm install -g neovim
"       
