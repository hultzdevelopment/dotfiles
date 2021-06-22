DOTFILES_DIR := $(HOME)/dotfiles

ALACRITTY_CONFIG_DIR := $(HOME)/.config/alacritty
NVIM_CONFIG_DIR := $(HOME)/.config/nvim
SANDBOXD_CONFIG_DIR := $(HOME)/.config/sandboxd
STARSHIP_CONFIG_DIR := $(HOME)/.config
TMUX_CONFIG_DIR := $(HOME)
ZSH_CONFIG_DIR := $(HOME)

.PHONY: all alacritty nvim sandboxd starship tmux zsh

all: alacritty nvim sandboxd starship tmux zsh

alacritty:
	${INFO} "Alacritty"
	@echo "Removing Alacritty config..."
	@rm -rf $(ALACRITTY_CONFIG_DIR)
	@echo "Config removed."

	@echo "Linking Alacritty config..."
	@mkdir -p $(ALACRITTY_CONFIG_DIR)
	@ln -sf $(DOTFILES_DIR)/alacritty/alacritty.yml $(ALACRITTY_CONFIG_DIR)/alacritty.yml
	@echo "Config linked successfully."

nvim:
	${INFO} "NeoVim"
	@echo "Removing NeoVim config..."
	@rm -rf $(NVIM_CONFIG_DIR)
	@echo "Config removed."

	@echo "Linking NeoVim config..."
	@mkdir -p $(NVIM_CONFIG_DIR)/config
	@ln -sf $(DOTFILES_DIR)/nvim/init.vim $(NVIM_CONFIG_DIR)/init.vim
	@ln -sf $(DOTFILES_DIR)/nvim/config/* $(NVIM_CONFIG_DIR)/config
	@echo "Config linked successfully."

sandboxd:
	${INFO} "Sandboxd"
	@echo "Removing Sandboxd config..."
	@rm -rf $(SANDBOXD_CONFIG_DIR)
	@echo "Config removed."

	@echo "Linking Sandboxd config..."
	@mkdir -p $(SANDBOXD_CONFIG_DIR)
	@ln -sf $(DOTFILES_DIR)/sandboxd/.sandboxrc $(SANDBOXD_CONFIG_DIR)/.sandboxrc
	@ln -sf $(DOTFILES_DIR)/sandboxd/sandboxd.sh $(SANDBOXD_CONFIG_DIR)/sandboxd.sh
	@echo "Config linked successfully."

starship:
	${INFO} "Starship"
	@echo "Removing Starship config..."
	@rm $(STARSHIP_CONFIG_DIR)/starship.toml
	@echo "Config removed."

	@echo "Linking Starship config..."
	@ln -sf $(DOTFILES_DIR)/starship/starship.toml $(STARSHIP_CONFIG_DIR)/starship.toml
	@echo "Config linked successfully."

tmux:
	${INFO} "Tmux"
	@echo "Removing Tmux config..."
	@rm $(TMUX_CONFIG_DIR)/.tmux.conf
	@echo "Config removed."

	@echo "Linking Tmux config..."
	@ln -sf $(DOTFILES_DIR)/tmux/.tmux.conf $(TMUX_CONFIG_DIR)/.tmux.conf
	@echo "Config linked successfully."

zsh:
	${INFO} "Zsh"
	@echo "Removing ZSH config..."
	@rm $(ZSH_CONFIG_DIR)/.zshrc
	@echo "Config removed."

	@echo "Linking ZSH config..."
	@ln -sf $(DOTFILES_DIR)/zsh/.zshrc $(ZSH_CONFIG_DIR)/.zshrc
	@echo "Config linked successfully."

# Cosmetics
YELLOW := "\e[1;33m"
NC := "\e[0m"

# Shell Functions
INFO := @bash -c '\
  printf $(YELLOW); \
  echo "=> $$1"; \
  printf $(NC)' SOME_VALUE
