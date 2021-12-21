let g:vimspector_enable_mappings = 'HUMAN'
nmap <leader>dd :call vimspector#Launch()<CR>
nmap <leader>dx :VimspectorReset<CR>
nmap <leader>de :VimspectorEval
nmap <leader>dw :VimspectorWatch
nmap <leader>do :VimspectorShowOutput

nnoremap <leader>d<space> :call vimspector#Continue()<CR>
nmap <leader>dp <Plug>VimspectorToggleBreakpoint 
nmap <leader>dl <Plug>VimspectorStepInto 
nmap <leader>dj <Plug>VimspectorStepOver 
nmap <leader>dk <Plug>VimspectorStepOut 
nmap <leader>dr <Plug>VimspectorRestart 
