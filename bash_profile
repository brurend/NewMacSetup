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

# Function to open Xcode project, checking if there is a workspace present or not. By @CavalcanteLeo
function xc {
    bold=$(tput bold)
    normal=$(tput sgr0)

    xcode_proj=`find . -name "*.xc*" -d 1 | sort -r | head -1`

    if [[ `echo -n $xcode_proj | wc -m` == 0 ]]
    then
        echo "No xcworkspace/xcodeproj file found in the current directory."
    else
        echo "Opening ${bold} $xcode_proj"
        open -a /Applications/Xcode.app "$xcode_proj"
    fi
}
