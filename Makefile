stow: # install all configs
	stow -vv -t ~/ zsh
	stow -vv -t ~/ git
	stow -vv -t ~/.config/nvim nvim

stow-zsh:
	stow -vv -t ~/ zsh

stow-git:
	stow -vv -t ~/ git

stow-nvim:
	stow -vv -t ~/.config/nvim nvim

