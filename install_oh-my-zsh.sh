# Run all of this as root
sudo bash << EOF
    # Install zsh if not present
    apt install zsh -y;

    # Install oh-my-zsh without interaction
    bash <(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended;

    # Install kali-linux like theme for oh-my-zsh (The one I prefer)
    wget -O ~/.oh-my-zsh/themes/kali-like.zsh-theme https://raw.githubusercontent.com/clamy54/kali-like-zsh-theme/master/kali-like.zsh-theme;

    # Activate kali-linux oh-my-zsh theme
    sed -i 's/ZSH_THEME="/ZSH_THEME="kali-like"\n#ZSH_THEME="/g' ~/.zshrc;

    # Activate oh-my-zsh updates in reminder mode
    echo "zstyle ':omz:update' mode reminder" >> ~/.zshrc;

    # Change default shell for root
    chsh -s /bin/zsh root;

    # Change default shell for new user at creation
    sed -i 's/#\nSHELL=/SHELL=\/bin\/zsh\n# SHELL=/g' /etc/default/useradd;

    # Copy oh-my-zsh necessary files to default home folder of new users
    cp -r ~/.*zsh* /etc/skel/;

    # Copy oh-my-zsh necessary files to home folder of all users
    # Set user specific permissions for these files
    # Change default shell for all user
    ls /home | xargs -I% sh -c 'cp -r ~/.*zsh* /home/% && chown -R %:% /home/%/.*zsh* && chsh -s /bin/zsh %';

    echo '---------------------------------------------------------------------------------';
    echo '---------------------------------------------------------------------------------';
    echo '---------------------------------------------------------------------------------';
    echo 'Installation successful !';
    echo 'Start a new shell or run "zsh" to use oh-my-zsh';
    echo '/!\ A certain delay is to be expected on first run /!\';
EOF
