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

runBrewFile() {
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
            runBrewFile
        elif ["$arg" == "company"]; then
            copyCompanyFiles
            runBrewFile
        fi
    fi

    echo "### masos-setup end ###"
}

main

