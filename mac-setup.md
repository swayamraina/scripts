# install rosseta for M1
softwareupdate --install-rosetta

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/swayam.raina/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/swayam.raina/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# install iterm2
brew install --cask iterm2

# install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install theme
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc
curl https://raw.githubusercontent.com/josean-dev/dev-environment-files/main/coolnight.itermcolors --output ~/Downloads/coolnight.itermcolors

------------------------------------------------------------------------------------------------------------------------------

# install docker
https://docs.docker.com/desktop/install/mac-install/

# install bloomrpc
brew install --cask bloomrpc

# install IDE
https://www.jetbrains.com/idea/download/#section=mac
https://www.jetbrains.com/go/download/#section=mac
https://www.jetbrains.com/pycharm/download/#section=mac
https://www.jetbrains.com/clion/download/#section=mac

# install languages
https://docs.aws.amazon.com/corretto/latest/corretto-8-ug/macos-install.html
https://go.dev/doc/install
https://gradle.org/install/

------------------------------------------------------------------------------------------------------------------------------

# setup gitconfig
vim ~/.gitconfig

[user]
# Please adapt and uncomment the following lines:
        name = swayamraina
        email = swayam.raina@swiggy.in
[url "git@github.com:swiggy-private/"]
        insteadOf = https://github.com/swiggy-private/
[url "“git@github.com:swiggy-private/“"]
        insteadOf = “https://api.github.com/swiggy-private/”
[url "git@github.com:"]
        insteadOf = https://github.com/
        
------------------------------------------------------------------------------------------------------------------------------

# setup ssh configs
vim ~/.ssh/config

# setup github access
vim ~/.ssh/id_rsa 
vim ~/.ssh/id_rsa.pub
chmod 400 ~/.ssh/id_rsa

------------------------------------------------------------------------------------------------------------------------------

# setup infra
git clone https://github.com/apache/kafka.git
git clone https://github.com/redis/redis.git
https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DynamoDBLocal.DownloadingAndRunning.html

------------------------------------------------------------------------------------------------------------------------------

