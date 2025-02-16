cat << EOF >> ~/.zprofile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

# Set zsh as defaut shell:
chsh -s /bin/zsh

### NEEDS TO BE DONE -> iterm ################################
#install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"



# TODO: set name
git config --global user.name "YOUR NAME"
git config --global user.email YOUREMAIL@gmail.com
git config --global github.user YOURusername



