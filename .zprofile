eval "$(/opt/homebrew/bin/brew shellenv)"
source "$HOME/.profile"

export PATH=$PATH:$HOME/.zls

alias rl="exec zsh -l"

alias ls="ls --color=auto"
alias dir="dir --color=auto"
alias vdir="vdir --color=auto"

alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

# Some more ls aliases.
alias ll="ls -l"
alias la="ll -A"
alias l="ls -CF"

alias gt="tree --gitignore --dirsfirst -v"
alias zbr="zig build run"
alias zbt="zig build test"
# alias gcc="gcc-15"

avenv() {
    if [[ -z "$1" ]]; then
        echo "Usage: av <venv_name>"
        return 1
    fi

    local venv_name="$1"
    local venv_path="$HOME/.envs/$venv_name"

    if [[ ! -d "$venv_path" ]]; then
        echo "Error: Virtual environment '$venv_name' not found in $HOME/.envs"
        return 1
    fi

    if [[ ! -f "$venv_path/bin/activate" ]]; then
        echo "Error: '$venv_path' does not appear to be a valid virtual \
            environment (missing 'bin/activate')"
        return 1
    fi

    source "$venv_path/bin/activate"
    echo "Activated virtual environment: $venv_name"
}

