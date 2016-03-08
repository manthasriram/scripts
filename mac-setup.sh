#Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#install git bash
echo "installing git bash completion script...."
brew install bash-completion

#install cask to install java
echo "installing java...."
brew tap caskroom/cask
brew install brew-cask
brew cask install java

#maven
echo "installing maven...."
brew install maven
