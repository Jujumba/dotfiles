clean:
	for dir in .config/*/; do rm -i "/home/$$USER/$${dir%/}"; done
	rm -i ~/.gitconfig ~/.user-gitconfig
	rm -i ~/.clang-format
	rm -irf ~/.cargo

install:	
	stow . --ignore \git --ignore Makefile
	stow --no-folding git
