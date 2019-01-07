# NewMacSetup

## 1) Download homebrew

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

## 2) Install rbenv

First install rbenv using home brew.
```
brew update
brew install rbenv
```

Now you can run the command `rbenv init`, this will tell you need to add a command to your `.bash_profile`, you can find this in this repository.

rbenv setup:
```
rbenv install 2.5.1
rbenv global 2.5.1
```
This is just an example of a ruby version, you can use any version you prefer.

## 3) Download iTerm2

https://www.iterm2.com/downloads.html

## 4) Install bash completion

```
brew install bash-completion
brew install bash-git-prompt
```

You will then need to add some configurations to your `.bash_profile`, you can look at this repository file to find it.

You may also need to install `git` using `brew` or autocompletion may not work. Install it with:
```
brew install git
```

Don't forget to restart your terminal so changes takes place.

## 5) Install bundler

`gem install bundler`

This one isn't mandatory, but I highly suggest it.
