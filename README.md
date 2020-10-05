# Install
Using vim-plug to install plugin
```Vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 't9md/vim-choosewin'
Plug 'yueyingjuesha/cp_buffer_window'
```

# Usage
`:call CpBufWin()` to send current buffer to selected window
if [vim-choosewin](https://github.com/t9md/vim-choosewin) is installed, use vim-choosewin to choose win, otherwise input the window number to send the buffer
