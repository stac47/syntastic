"============================================================================
"File:        zsh.vim
"Description: Syntax checking plugin for syntastic.vim
"Maintainer:  Martin Grenfell <martin.grenfell at gmail dot com>
"License:     This program is free software. It comes without any warranty,
"             to the extent permitted by applicable law. You can redistribute
"             it and/or modify it under the terms of the Do What The Fuck You
"             Want To Public License, Version 2, as published by Sam Hocevar.
"             See http://sam.zoy.org/wtfpl/COPYING for more details.
"
"============================================================================

function! SyntaxCheckers_zsh_zsh_IsAvailable()
    return executable("zsh")
endfunction

function! SyntaxCheckers_zsh_zsh_GetLocList()
    let makeprg = syntastic#makeprg#build({ 'exe': 'zsh', 'args': '-n' })
    let errorformat = '%f:%l: %m'
    return SyntasticMake({ 'makeprg': makeprg, 'errorformat': errorformat})
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'zsh',
    \ 'name': 'zsh'})