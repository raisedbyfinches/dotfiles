# this one runs when no arguments are given
default:
    @echo "Available commands:"
    @echo "  shell   - Copy shell settings to ~"
    @echo "  scripts - Copy scripts to ~/.scripts"
    @echo "  config  - Copy config to ~/.config"
    @echo "  install - Run all of the above"


install: shell config scripts
    @echo "All tasks completed!"


shell:
    #!/usr/bin/env bash
    set -euo pipefail

    cp profile/profile "$HOME/.profile"
    [[ ! -d "$HOME/.profile.d" ]] && mkdir -p "$HOME/.profile.d"
    cp -a profile/profile.d/* "$HOME/.profile.d"
    cp profile/zshrc "$HOME/.zshrc"

    echo "* Copied shell settings"


config:
    #!/usr/bin/env bash
    set -euo pipefail

    [[ ! -d "$HOME/.config" ]] && mkdir -p "$HOME/.config"
    cp -r ./kitty/* "$HOME/.config/kitty"
    cp starship/starship.toml "$HOME/.config"
    cp r/Rprofile "$HOME/.Rprofile"
    cp -a hypr "$HOME/.config"

    echo "* Copied application settings"


scripts:
    #!/usr/bin/env bash
    set -euo pipefail

    [[ ! -d "$HOME/.scripts" ]] && mkdir -p "$HOME/.scripts"
    cp -r ./scripts/* "$HOME/.scripts"
    chmod +x ~/.scripts/*

    echo "* Copied scripts"


#+BROKEN
hey:
    #!/usr/bin/env bash
    set -euo pipefail

    echo "* TO DO"
