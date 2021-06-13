.PHONY: bin git gpg mail shell tmux zsh
all: .PHONY

bin:
	@rm -f "$(HOME)/bin"
	@ln -svf "$(CURDIR)/bin" "$(HOME)/bin"

git:
	@ln -svf "$(CURDIR)/gitconfig" "$(HOME)/.gitconfig"

gpg:
ifneq ($(wildcard ~/.gnupg),)
	@ln -svf "$(CURDIR)/gnupg/gpg-agent.conf" "$(HOME)/.gnupg/gpg-agent.conf"
	@ln -svf "$(CURDIR)/gnupg/gpg.conf" "$(HOME)/.gnupg/gpg.conf"
endif

mail:
	@ln -svf "$(CURDIR)/mbsyncrc" "$(HOME)/.mbsyncrc"
	@ln -svf "$(CURDIR)/msmtprc" "$(HOME)/.msmtprc"

shell:
	@ln -svf "$(CURDIR)/dircolors" "$(HOME)/.dircolors"

tmux:
	@ln -svf "$(CURDIR)/tmux.conf" "$(HOME)/.tmux.conf"

zsh:
	@rm -f "$(HOME)/.zsh"
	@ln -svf "$(CURDIR)/zsh" "$(HOME)/.zsh"
	@ln -svf "$(CURDIR)/zsh/zshenv" "$(HOME)/.zshenv"
	@ln -svf "$(CURDIR)/zsh/zshrc" "$(HOME)/.zshrc"
