.PHONY: bin git shell tmux zsh
all: .PHONY

bin:
	@rm -f "$(HOME)/bin"
	@ln -svf "$(CURDIR)/bin" "$(HOME)/bin"

git:
	@ln -svf "$(CURDIR)/gitconfig" "$(HOME)/.gitconfig"

shell:
	@ln -svf "$(CURDIR)/dircolors" "$(HOME)/.dircolors"

tmux:
	@ln -svf "$(CURDIR)/tmux.conf" "$(HOME)/.tmux.conf"

zsh:
	@rm -f "$(HOME)/.zsh"
	@ln -svf "$(CURDIR)/zsh" "$(HOME)/.zsh"
	@ln -svf "$(CURDIR)/zsh/zshenv" "$(HOME)/.zshenv"
	@ln -svf "$(CURDIR)/zsh/zshrc" "$(HOME)/.zshrc"
