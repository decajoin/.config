#!/bin/bash

# 更新包列表并安装必要的软件包
echo "Updating package list and installing necessary packages..."
sudo apt update
sudo apt install -y gnome-tweaks vim git fish tmux curl

# 设置 Fish 为默认 Shell
echo "Setting Fish as the default shell..."
chsh -s /usr/bin/fish

# 安装 Oh My Fish
echo "Installing Oh My Fish..."
curl -L https://get.oh-my.fish | fish

# 删除现有的 Fish 配置并克隆新的配置文件
echo "Cloning your Fish configuration from GitHub..."
rm -rf ~/.config/fish/config.fish
mkdir -p ~/.config/fish
curl -o ~/.config/fish/config.fish https://raw.githubusercontent.com/decajoin/.config/main/fish/config.fish

# 安装 neolambda 主题
echo "Installing neolambda theme..."
fish -c "omf install neolambda"

# 配置 Vim
echo "Cloning your Vim configuration from GitHub..."
curl -o ~/.vimrc https://raw.githubusercontent.com/decajoin/.config/main/vim/vimrc

# 安装 vim-plug 
echo "Installing vim-plug..." 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# 配置 Tmux  
echo "Cloning your Tmux configuration from GitHub..."


curl -o ~/.tmux.conf https://raw.githubusercontent.com/decajoin/.config/main/tmux/tmux.conf



# 安装 Node.js   
echo "Installing Node.js..."   
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -



sudo apt-get install -y nodejs   

echo "Configuration completed. Please restart your terminal."



