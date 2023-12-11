#!/bin/zsh

createDir() {
    cd
    mkdir -p .config/fish
}

copyPersonalFiles() {
    cd $HOME/masos-setup/personal
    copyFiles
}

copyCompanyFiles() {
    cd $HOME/masos-setup/company
    copyFiles
}

copyFiles() {
    cp Brewfile $HOME

    cp .zshrc $HOME

    cp .gitconfig $HOME

    cp .config/fish/config.fish $HOME/.config/fish
}

runBrewfile() {
    cd
    brew bundle install
}

main() {
    echo "### masos-setup start ###"

    echo "Home = $HOME"

    arg=$1

    if [! -z "$arg" ]; then
        createDir

        if ["$arg" == "personal"]; then
            copyPersonalFiles
            runBrewfile
        elif ["$arg" == "company"]; then
            copyCompanyFiles
            runBrewfile
        fi
    fi

    echo "### masos-setup end ###"
}

main

