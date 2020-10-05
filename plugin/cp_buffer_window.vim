" Loading guard
if exists("g:loaded_cp_buffer_window")
    finish
endif
let g:loaded_cp_buffer_window = 1

" Add window number to lightline
function! WindowNumber(...)
    let builder = a:1
    let context = a:2
    call builder.add_section('airline_b', '%{tabpagewinnr(tabpagenr())}')
    return 0
endfunction

call airline#add_statusline_func('WindowNumber')
call airline#add_inactive_statusline_func('WindowNumber')


" Send current buffer to selected windows
function! CpBufWin() abort
    let l:bufnr = bufnr(bufname())
    execute "mark Z"
    if exists('g:loaded_choosewin') 
        call choosewin#start(range(1, winnr('$')))
    else
        let l:winnr = input("Window number to send buffer: ")
        let l:winid = win_getid(l:winnr)
        call win_gotoid(l:winid)
    endif
    execute 'buffer ' . l:bufnr
    execute "normal g'Z"
    execute "delm Z"
endfunction
