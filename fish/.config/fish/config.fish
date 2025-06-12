set fish_greeting
fastfetch
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
starship init fish | source

alias stow-hm='stow -t ~'

function mkdot
    mkdir -p ./$argv[1]/$argv[2]
    mv ~/$argv[2]/$argv[1] ./$argv[1]/$argv[2]/$argv[1]
end
