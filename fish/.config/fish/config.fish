set fish_greeting
fastfetch
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
starship init fish | source

function stow-hm
    stow -t ~ $argv
end
