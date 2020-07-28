# Chrome
``` bash
# key
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
# repo
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
# install
sudo apt install google-chrome-stable
```
### chrome-shell
```bash
sudo apt install chrome-gnome-shell
```

# Video-player
``` bash
# install
sudo snap install smplayer
# codec
sudo apt install ubuntu-restricted-extras
```
- in smplayer, use **Video -> Filters -> Add black borders** for subtitle on letterbox.

# Gnome
### tweaks
``` bash
sudo apt install gnome-tweaks
```
### chrome-shell
```bash
sudo apt install chrome-gnome-shell
```
### Extensions
- Persian calendar
- dash to dock

# Tools
### tmux
``` bash
sudo apt install tmux
```
### wine
``` bash
# install
sudo apt install wine winetricks
```
### battery saving mode
``` bash
# install
sudo apt install laptop-mode-tools
```

# java
``` bash
# install
sudo apt-get install openjdk-11-jdk
```

# ZSH
``` bash
# install
sudo apt install zsh
# set as default shell
chsh -s $(which zsh)
# checking
# NOTE: need to log out
echo $SHELL
```
### oh-my-zsh
``` bash
# install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# theme
nano ~/.zshrc # ZSH_THEME=agnoster
# font for agnoster
sudo apt-get install fonts-powerline
# change name tag
nano ~/.oh-my-zsh/themes/agnoster # change prompt_context
```
### syntax-highlighting
``` bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
nano ~/.zshrc # plugins = (... zsh-syntax-highlighting) with space seperator!
```

# VS-Code
``` bash
# get Key
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
# install key
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
# repo
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
# install
sudo apt-get update
sudo apt-get install apt-transport-https
sudo apt-get install code
```
### Extensions
- better comments
- bracket colorizer 2
- gitlens
- vscode icons(not great!)

# Font
``` bash
# install kateb to installing persian fonts
sudo cpan kateb
# vazir font
kateb install vazir
# fira code
sudo apt install fonts-firacode 
```

# Flutter
### install
[download](https://flutter.dev/docs/get-started/install/linux#get-sdk)
```bash
# create directory
mkdir flutter
cd flutter
# unpack
tar xf ~/Downloads/flutter_linux_1.17.1-stable.tar.xz
# add path
nano ~/.zshrc # add this: export PATH="$PATH:/home/sadegh/flutter/flutter/bin"
# test
which flutter
```
- needs 400MB to download!
```bash
flutter precache
```
- Open the Android Studio SDK Manager
- In the Android SDK tab, uncheck Hide Obsolete Packages
- Check Android SDK Tools (Obsolete)
- install flutter extension in android studio
- install flutter extension in vs code
```bash
flutter doctor
````

### android-studio
[download](https:/https://developer.android.com/studio/install#linux/developer.android.com/studio)
- needs to download more that 4GB during instation!
``` bash
# libraries
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
# move folder
sudo mv android-studio /opt
# install
cd android-studio/bin
./studio.sh
```

# Spotify
```bash
# Key
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
# repo
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
# install
sudo apt update
sudo apt install spotify-client
```
