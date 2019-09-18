echo "Copying .dotfiles ..."
for file in .{aliases,functions,bash_profile,bash_prompt,bashrc,extra}; do
    if [ -r "$file" ]; then
        cp -v "$file" ~/$file
    fi
done
unset file
