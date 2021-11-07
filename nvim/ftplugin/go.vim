setlocal tabstop=8

function! Package()
  let curline = getline('.')
  call inputsave()
  let b:package = input('Enter package name: ')
  call inputrestore()

  call system('find /usr/lib/go/src/' . b:package . ' > /tmp/lib__')
  new
  e /tmp/lib__
endfunction
