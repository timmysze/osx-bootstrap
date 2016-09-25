/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update

curl -L http://install.ohmyz.sh | sh

# project directory
mkdir -p ~/dev

# Taps
while read in; do brew tap "$in"; done < Taps

# Install brews
brew install $(cat Brewfile|grep -v "#")

# Install casks
brew cask install $(cat Caskfile|grep -v "#")

# Update OS X
sudo softwareupdate -i -a
