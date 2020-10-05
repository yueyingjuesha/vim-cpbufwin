A plugin to copy current buffer to selected window

This plugin is aimed to change general "jump" window destination, whether 
using `gd`, `gr`, or `<C-[>`. In future more commands (like commands in fzf.vim)
may be supported

Currently still under development, feel free to commit PR to the project

# Install
Using vim-plug to install plugin
```Vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 't9md/vim-choosewin'
Plug 'yueyingjuesha/cp_buffer_window'
```

Add following map to your .vimrc(vim) / init.vim(neovim)
```Vim
" send current buffer to selected window
nnoremap <Leader>sb :call CpBufWin()<CR>

" you can add additional map to ease your workflow
" for example, jump to definition(`gd`) and display it in selected window
nnoremap bgd :call CpBufWin()<CR>gd
```

# Usage
`:call CpBufWin()` Send current buffer to selected window.

`bgd` Jump to destination in selected window

if [vim-choosewin](https://github.com/t9md/vim-choosewin) is installed, use 
vim-choosewin to choose window, otherwise window number is requested to send 
current buffer to
