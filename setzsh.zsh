if [ $# -ne 1 ]; then
	echo "No argument specified"
	exit 1
fi

if [ $1 = "mac" ]; then
	cp './mac/.zsh_aliases' $HOME
	cp './mac/.zshrc' $HOME
elif [ $1 = "apt" ]; then
	cp './apt/.zsh_aliases' $HOME
	cp ./.zshrc $HOME
elif [ $1 = "pacman" ]; then
	cp './pacman/.zsh_aliases' $HOME
	cp ./.zshrc $HOME
else
	echo "Package manager not supported"
fi

cp ./.zsh_paths $HOME
cp ./.vimrc $HOME
