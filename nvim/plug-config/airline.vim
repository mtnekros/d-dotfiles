let g:airline_section_z = "%p%% ☰ %l/%{line('$')} ln : %v"
" add teh git branch and changes in current buffer info
" not the best way to do it, but it werks
let g:airline_section_b = "%{ len(get(b:, 'gitsigns_head', '')) >= 0 ? ' ' : '' }%{get(b:, 'gitsigns_head', '')} %{get(b:,'gitsigns_status','')}""
