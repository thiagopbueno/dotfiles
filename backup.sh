[ -d old/ ] || mkdir old/

for file in .{aliases,functions,bash_profile,bash_prompt,bashrc,extra}; do
    [ -r ~/$file ] && cp -v ~/$file old/$file-$(date +"%Y-%m-%d-%T")
done
unset file
