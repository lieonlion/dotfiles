function mkdot
    set -l name
    set -l dir
    set -l parent ""
    set -l file

    # Parse flags
    for i in (seq (count $argv))
        switch $argv[$i]
            case -n
                set name $argv[(math $i + 1)]
            case -p
                set parent $argv[(math $i + 1)]
            case -d
                set dir $argv[(math $i + 1)]
            case -f
                set file $argv[(math $i + 1)]
        end
    end

    if test -z "$name"
        echo "Error: -n (package name) is required"
        return 1
    end

    # Ensure parent doesn't start with a slash
    set parent (string replace -r '^/+' '' -- $parent)

    # Ensure parent end with a slash
    if not string match -q '*/' -- $parent
        set parent $parent/
    end

    # Determine source path
    if test -n "$file"
        set src ~/$parent$file
        set filename (basename $file)
    else if test -n "$dir"
        set src ~/$parent$dir
        set filename $dir
    else
        set src ~/$parent$name
        set filename $name
    end

    # Create destination directory
    mkdir -p $name/$parent

    # Move file
    mv $src $name/$parent$filename

    # Stow the package
    stow $name

    echo Moved `$src` to `$name/$parent$filename`
end
