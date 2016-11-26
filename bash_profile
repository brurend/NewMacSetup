#alias
alias clean_derived_data="rm -rf ~/Library/Developer/Xcode/DerivedData/* && rm -frd ~/Library/Caches/com.apple.dt.Xcode/*"

#bash config
if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
GIT_PROMPT_THEME=Default
source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# rbenv
eval "$(rbenv init -)"
