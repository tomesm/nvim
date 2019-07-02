" Python settings"
setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent
setlocal smarttab
setlocal formatoptions=croql

""" Semshi syntax highlight """
function MyCustomHighlights()
    hi semshiGlobal    ctermfg=red
    hi semshiBuiltin   ctermfg=red
    hi semshiAttribute ctermfg=36
    hi semshiSelected  ctermfg=231 ctermbg=24
endfunction

call MyCustomHighlights()