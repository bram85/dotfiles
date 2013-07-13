augroup filetypedetect
  au BufNewFile,BufRead .tmux.conf*,tmux.conf* setf tmux
  au! BufRead,BufNewFile *.bnf          setfiletype ebnf
  au! BufRead,BufNewFile *.ebnf         setfiletype ebnf
  au! BufRead,BufNewFile *.mcrl         setfiletype mcrl
  au! BufRead,BufNewFile *.mcrl2        setfiletype mcrl2
  au! BufRead,BufNewFile *.go           setfiletype go
  au! BufRead,BufNewFile *.smv          setfiletype smv
  au! BufRead,BufNewFile *.dart         setfiletype dart
  au! BufRead,BufNewFile *.json         setfiletype javascript
  au! BufRead,BufNewFile *.wiki         setfiletype mediawiki
augroup END

