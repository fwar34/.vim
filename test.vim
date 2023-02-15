vim9script

import autoload 'popupe.vim'

popupe.PopupInput((result: string) => {
  if result is null_string
    echo 'Cancelled'
  else
    echo result
  endif
})
