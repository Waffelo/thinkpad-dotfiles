" # // Tabs managment
noremap tu :tabe<CR>
noremap tU :tab split<CR>
noremap tc :tabclose<CR>

" Move around the tabtis
noremap tn :-tabnext<CR>
noremap ti :+tabnext<CR>
" Move the tabs
noremap tmn :-tabmove<CR>
noremap tmi :+tabmove<CR>

"# // Arduino
nnoremap <buffer> <leader>aa <cmd>ArduinoAttach<CR>
nnoremap <buffer> <leader>am <cmd>ArduinoVerify<CR>
nnoremap <buffer> <leader>au <cmd>ArduinoUpload<CR>
nnoremap <buffer> <leader>ad <cmd>ArduinoUploadAndSerial<CR>
nnoremap <buffer> <leader>ab <cmd>ArduinoChooseBoard<CR>
nnoremap <buffer> <leader>ap <cmd>ArduinoChooseProgrammer<CR>


"# // Telescope File Explorer
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"# // NERDTree
noremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" # // NVIM Tree
nnoremap <C-t> :NvimTreeToggle<CR>
nnoremap <C-f> :NvimTreeFocus<CR>
nnoremap <C-n> :NvimTreeCollapse<CR>
