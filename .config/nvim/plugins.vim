call plug#begin('~/.local/share/nvim/site/plugged')
  
   " ## Appearance
    Plug 'itchyny/lightline.vim'
   " Plug 'nvim-lualine/lualine.nvim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'mhinz/vim-startify' " startup
    "# Colorschemes
    Plug 'catppuccin/nvim', {'as': 'catppuccin'} " Colorscheme
    Plug 'cocopon/iceberg.vim'

    " ## Syntax
    Plug 'lukas-reineke/indent-blankline.nvim' " Indent lines
    Plug 'cespare/vim-toml', { 'branch': 'main' } " TOML syntax
    Plug 'https://github.com/z3t0/arduvim' " Arduino Syntax!

    " ## Extra
    "Plug 'preservim/nerdtree' " files
    Plug 'lervag/vimtex' "tex support
    Plug 'vimwiki/vimwiki' " Vim note taking
    Plug 'nvim-telescope/telescope.nvim' " file finder
    Plug 'tpope/vim-fugitive' " Git tool
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Some finder crap
    Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'itchyny/calendar.vim' " Calendar

    " ## Programming tools
    Plug 'stevearc/vim-arduino'
    Plug 'neoclide/coc.nvim', {'branch': 'release'} " Completion
    Plug 'mattn/emmet-vim' " HTML helper
    Plug 'preservim/nerdcommenter' " Commenter

    " ## Misc.
    " Plug 'wakatime/vim-wakatime' " Vim time logger
    Plug 'andweeb/presence.nvim' " Discord rpc

    " ## Parked plugins
    "Plug 'jakerobers/vim-hexrgba' " hex to rgba
    "Plug 'kevinhwang91/nvim-ufo'
    "Plug 'rcarriga/nvim-notify' 

call plug#end()

set foldenable 


"colorscheme catppuccin

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" NVIMTree =======================%%%========================================================================

lua << EOF
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
EOF

" LUA Line ==================================================================================================================
" lua << END
" require('lualine').setup()
" END
"
" lua << END
" require('lualine').setup {
"   options = {
"     icons_enabled = true,
"     theme = 'auto',
"     component_separators = { left = '', right = ''},
"     section_separators = { left = '', right = ''},
"     disabled_filetypes = {
"       statusline = {},
"       winbar = {},
"     },
"     ignore_focus = {},
"     always_divide_middle = true,
"     globalstatus = false,
"     refresh = {
"       statusline = 1000,
"       tabline = 1000,
"       winbar = 1000,
"     }
"   },
"   sections = {
"     lualine_a = {'mode'},
"     lualine_b = {'branch', 'diff', 'diagnostics'},
"     lualine_c = {'filename'},
"     lualine_x = {'encoding', 'fileformat', 'filetype'},
"     lualine_y = {'progress'},
"     lualine_z = {'location'}
"   },
"   inactive_sections = {
"     lualine_a = {},
"     lualine_b = {},
"     lualine_c = {'filename'},
"     lualine_x = {'location'},
"     lualine_y = {},
"     lualine_z = {}
"   },
"   tabline = {},
"   winbar = {},
"   inactive_winbar = {},
"   extensions = {}
" }
" END
"
" VIM Fugitive =====================================================================================================
" Git tool


" TreeSitter =====================================================================================================
" Higlighter
" :TSInstall <language>

" lua << EOF
" require'nvim-treesitter.configs'.setup {
"   -- A list of parser names, or "all"
"   ensure_installed = { "c", "cpp", "html", "css", "vim", "lua", "rust" },
"
"   -- Install parsers synchronously (only applied to `ensure_installed`)
"   sync_install = false,
"
"   -- Automatically install missing parsers when entering buffer
"   auto_install = true,
"
"   -- List of parsers to ignore installing (for "all")
"   ignore_install = {  },
"
"   highlight = {
"     -- `false` will disable the whole extension
"     enable = true,
"
"     -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
"     -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
"     -- the name of the parser)
"     -- list of language that will be disabled
"     disable = {  },
"
"     -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
"     -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
"     -- Using this option may slow down your editor, and you may see some duplicate highlights.
"     -- Instead of true it can also be a list of languages
"     additional_vim_regex_highlighting = false,
"   },
" }
" EOF
"
" NERDCommenter =====================================================================================================
"
" <leader>cc - Comment out the current line or selected area
" <leader>cu - Uncomments the selected line(s).
" <leader>cn - Same as cc but forces nesting
" <leader>c<space> - Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.
" <leader>ci - Toggles the comment state of the selected line(s) individually.
" <leader>cs - Comments and formats the code so it looks yiffy sexy

filetype plugin on

" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1




" # Catppuccin =====================================================================================================
" Color scheme

" let g:catppuccin_flavour = "mocha" " latte, frappe, macchiato, mocha
"
" lua << eof
" require("catppuccin").setup()
" eof
"
" colorscheme catppuccin
"
" # // VimWiki  =====================================================================================================
" Vim note taking plugins
" <leader>ww - Toggles the note mode

let g:vimwiki_list = [{'path': '~/Documents/Personal/Notes/VimWiki',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

let g:vimwiki_listsyms = '✗○◐●✓'

" # // Lightline =====================================================================================================
" Fancy status bar

set laststatus=2
"let g:lightline = {'colorscheme': 'catppuccin',}


" # // Vimtex =====================================================================================================

" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'zathura'

" Or with a generic interface:
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
let g:vimtex_compiler_method = 'latexrun'

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
let maplocalleader = ","








" # // Presence =====================================================================================================
" Discord RPC, so your friends can see you create scripts that will hack the
" pentagon


" General options
let g:presence_auto_update         = 1
let g:presence_neovim_image_text   = "The One True Text Editor"
let g:presence_main_image          = "neovim"
let g:presence_client_id           = "793271441293967371"
let g:presence_debounce_timeout    = 10
let g:presence_enable_line_number  = 0
let g:presence_blacklist           = []
let g:presence_buttons             = 1
let g:presence_file_assets         = {}

" Rich Presence text options
let g:presence_editing_text        = "Editing %s"
let g:presence_file_explorer_text  = "Browsing %s"
let g:presence_git_commit_text     = "Committing changes"
let g:presence_plugin_manager_text = "Managing plugins"
let g:presence_reading_text        = "Reading %s"
let g:presence_workspace_text      = "Working on %s"
let g:presence_line_number_text    = "Line %s out of %s"


" # // Startify =====================================================================================================


let g:startify_list_order = [
      \ ['   My most recently used files in the current directory:'],
      \ 'dir',
      \ ]

" let g:startify_custom_header = [
      " \'',
      " \'',
      " \'  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
      " \'  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
      " \'  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
      " \'  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
      " \'  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
      " \'  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
      " \'',
      " \ ]


let g:startify_custom_header = [
\'',
\'     ███████                                ████',
\'    ░██░░░░██                              ░██░ ',
\'    ░██   ░██   ██████  ███     ██ ██████ ██████',
\'    ░███████   ██░░░░██░░██  █ ░██░░██░░█░░░██░ ',
\'    ░██░░░██  ░██   ░██ ░██ ███░██ ░██ ░   ░██  ',
\'    ░██  ░░██ ░██   ░██ ░████░████ ░██     ░██  ',
\'    ░██   ░░██░░██████  ███░ ░░░██░███     ░██  ',
\'    ░░     ░░  ░░░░░░  ░░░    ░░░ ░░░      ░░   ',
\'',
\]

let g:startify_change_to_dir = 0





" ========================================================================
" Resources
"
" Emmet Plugin: https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL
"
