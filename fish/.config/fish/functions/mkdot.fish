function mkdot
    mkdir -p ./$argv[1]/$argv[2]
    mv ~/$argv[2]/$argv[1] ./$argv[1]/$argv[2]/$argv[1]
    stow $argv[1]
end
