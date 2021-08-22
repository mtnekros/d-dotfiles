" function to add comma separator to linenumber that i copied from airlines
" github page
function! MyLineNumber()
    return substitute(line('.'), '\d\@<=\(\(\d\{3\}\)\+\)$', ',&', 'g'). '/'.
      \    substitute(line('$'), '\d\@<=\(\(\d\{3\}\)\+\)$', ',&', 'g').' ln'
endfunction
call airline#parts#define_accent('linenr', 'none') " remove the bold accent from linenr (linenumber)
call airline#parts#define('linenr', {'function': 'MyLineNumber'}) " define as airline part

function! AirlineInit()
    " set airline section manually because the default one had some errors
    " with spacing
    let g:airline_section_z = airline#section#create(['%p%% ☰   ', 'linenr','  : %v'])

    " add the git branch and changes in current buffer info
    " not the best way to do it, but it werks
    " add vim-fugitive later to get more git functionalities
    let g:airline_section_b = "
        \%{ !empty(get(b:, 'gitsigns_head', '')) ? ' ' : '' }
        \%{ get(b:, 'gitsigns_head', '') } %{ get(b:,'gitsigns_status','') }
        \ %{ strftime(' %H:%M  %a %d%b')}
        \"
endfunction

autocmd User AirlineAfterInit call AirlineInit()
