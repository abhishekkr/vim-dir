if exists("g:loaded_dir_in_nautilus")
  finish
endif
let g:loaded_dir_in_nautilus = 1

function! s:DirInnautilus()
  silent! ! nautilus `dirname %`
  " For terminal Vim not to look messed up.
  redraw!
endfunction

command! Dir call <SID>DirInnautilus()
