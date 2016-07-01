sudo chmod +x install.sh
./install.sh

for file in .{aliases,functions,bash_profile,bash_prompt,bashrc}; do
	cp "$file" ~/
done
unset file

source ~/.bash_profile

sudo chmod +x .osx
./.osx