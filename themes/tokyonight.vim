if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
  augroup END
endif

let g:tokyonight_style="night"
let g:tokyonight_italic_functions="true"
let g:tokyonight_transparent="true"
let g:tokyonight_transparent_sidebar="true"
let g:tokyonight_dark_sidebar="false"
let g:tokyonight_dark_float="false"

syntax on
colorscheme tokyonight 

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi Normal ctermbg=NONE guibg=NONE
    hi LineNr ctermbg=NONE guibg=NONE
endif
