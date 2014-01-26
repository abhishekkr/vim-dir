if exists("g:loaded_dir_in_tux")
  finish
endif
let g:loaded_dir_in_tux = 1

function! s:DirInTux()
  silent! ! xdg-open `dirname %`
  " For terminal Vim not to look messed up.
  redraw!
endfunction

command! Dir call <SID>DirInTux()
