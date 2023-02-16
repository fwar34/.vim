vim9script

import autoload 'popupe.vim'

def TestPopup()
    popupe.PopupInput((result: string) => {
        if result is null_string
            echo 'Cancelled'
        else
            echo result
        endif
    })
enddef

def TestBuildCommand(): string
    const ignore_dirs = ['node_modules', '.git']
    var cmd_str = ignore_dirs->mapnew((_, dir) => '-E ' .. dir)
    cmd_str->add('-t f')
    return 'fd . ' .. cmd_str->join()
enddef

echo system(TestBuildCommand())


def TBuildFindCommand(): string
    const ignore_directories = ['.git']
    if has('win32')
        var cmd_exprs = ignore_directories->mapnew((_, dir) => '-E ' .. dir)
        cmd_exprs->add('-t f')
        return 'fd . ' .. cmd_exprs->join()
    else
        var cmd_exprs = ignore_directories->mapnew((_, dir) => '-type d -name ' .. dir .. ' -prune')
        cmd_exprs->add('-type f -print')
        return 'find . ' .. cmd_exprs->join(' -o ')
    endif
enddef
echo TBuildFindCommand()
