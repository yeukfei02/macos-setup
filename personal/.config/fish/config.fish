if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias brew="env PATH=(string replace (pyenv root)/shims '' \"\$PATH\") brew"

starship init fish | source
