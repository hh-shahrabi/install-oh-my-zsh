#!/bin/bash

# Oh My Zsh Installation Script with Plugins
# This script installs zsh, oh-my-zsh, and configures plugins

set -e  # Exit on any error

echo "Starting Oh My Zsh installation and configuration..."

# Step 1: Install zsh
echo "Installing zsh..."
apt update
apt install zsh -y

# Step 2: Set zsh as default shell
echo "Setting zsh as default shell..."
chsh -s $(which zsh)

# Step 3: Install Oh My Zsh
echo "Installing Oh My Zsh..."
# Use unattended installation to avoid interactive prompts
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Set ZSH_CUSTOM path if not already set
export ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}

# Step 4: Install zsh-autosuggestions plugin
echo "Installing zsh-autosuggestions plugin..."
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Step 5: Install zsh-syntax-highlighting plugin
echo "Installing zsh-syntax-highlighting plugin..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# Step 6: Configure .zshrc file
echo "Configuring .zshrc..."

# Change theme to fino-time
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="fino-time"/' ~/.zshrc

# Update plugins line
sed -i 's/^plugins=.*/plugins=(git zsh-autosuggestions zsh-syntax-highlighting command-not-found colorize)/' ~/.zshrc

# Step 7: Source the configuration
echo "Sourcing .zshrc..."
# Note: This will only affect the script's subshell, user needs to restart terminal or source manually
source ~/.zshrc 2>/dev/null || true

echo ""
echo "=========================================="
echo "✓ Installation completed successfully!"
echo "=========================================="
echo ""
echo "Please restart your terminal or run: source ~/.zshrc"
echo "Then start a new zsh session to see the changes."
