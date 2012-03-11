" Deal with customized Javascript ctags output
" http://stackoverflow.com/questions/1790623/how-can-i-make-vims-taglist-plugin-show-useful-information-for-javascript
let g:tlist_javascript_settings = 'javascript;s:string;a:array;o:object;f:function'

" Syntastic: use the jsl.conf in the current diroctory if available
if filereadable( ".jsl.conf" )
  let g:syntastic_javascript_jsl_conf = "-conf .jsl.conf"
endif
