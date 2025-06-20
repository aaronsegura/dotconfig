function code -d "Open LazyVim with included .venv" -a dir
    if [ -d $dir/.venv -a ! "$VIRTUAL_ENV" ]
        source $dir/.venv/bin/activate.fish
        set DEACTIVATE 1
    else
        set DEACTIVATE 0
    end
    cd $dir
    nvim .
    if test $DEACTIVATE -eq 1
        deactivate
    end
    cd -
end
