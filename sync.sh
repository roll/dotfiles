# Set glob config
shopt -s globstar
shopt -s dotglob

# Set variable
DIRECTORY="projects/dotfiles"
GLOBIGNORE="$HOME/$DIRECTORY/[!.]*:*.git/*:*.gitignore:*.tmuxp.yml"

#Make symlinks
for f in ~/$DIRECTORY/**
do
    source=$f
    target=$(echo "$f" | sed -e "s#$DIRECTORY/##")
    if [ -f $source ]; then
        # echo "Ensure symlink $target"
        ln -fvs "$source" "$target"
    fi
done

