" format the cursor, wordcount and line informations section: section z
let g:airline_section_z = "%p%% ☰   %l/%{line('$')} ln : %v"
" count word only on markdown files since it pointless in other files for my
" use case and it would also be costly in large files counting all the words
" every 100ms
autocmd FileType markdown g:airline_section_z = "%{get(wordcount(), 'words')} words  %p%% ☰   %l/%{line('$')} ln : %v"

" add the git branch and changes in current buffer info
" not the best way to do it, but it werks
let g:airline_section_b = "
    \%{ !empty(get(b:, 'gitsigns_head', '')) ? ' ' : '' }
    \%{ get(b:, 'gitsigns_head', '') } %{ get(b:,'gitsigns_status','') }
    \ %{ strftime(' %H:%M  %a %d%b')}
    \"
