if [ $# -ne 1 ]; then
	echo "No argument specified"
	exit 1
fi

cp ./.zshrc $HOME
if [ $1 = "mac" ]; then
	cp ./mac/.zsh_aliases $HOME
elif [ $1 = "apt" ]; then
	cp ./apt/.zsh_aliases $HOME
elif [ $1 = "pacman" ]; then
	cp ./pacman/.zsh_aliases $HOME
fi
