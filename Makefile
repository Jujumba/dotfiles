clean:
	for dir in .config/*/; do rm -i "/home/$$USER/$${dir%/}"; done
	rm -i ~/.gitconfig ~/.user.gitconfig

install:	
	stow . --ignore \git
	stow --no-folding git
