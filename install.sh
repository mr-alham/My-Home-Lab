#!/bin/bash

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/powerlevel10k
echo 'source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

if [[ ! -d ~/.zsh/plugins ]]; then

    mkdir -p ~/.zsh/plugins/zsh-syntax-highlighting
    mkdir -p ~/.zsh/plugins/zsh-autosuggestions
    mkdir -p ~/.zsh/plugins/zsh-history-substring-search

    elif [[ ! -d ~/.zsh/plugins/zsh-syntax-highlighting ]]; then
        mkdir -p ~/.zsh/plugins/zsh-syntax-highlighting
    fi
    elif [[ ! -d ~/.zsh/plugins/zsh-autosuggestions ]]; then
        mkdir -p ~/.zsh/plugins/zsh-autosuggestions
    fi
    elif [[ ! -d ~/.zsh/plugins/zsh-history-substring-search ]]; then
        mkdir -p ~/.zsh/plugins/zsh-history-substring-search
    fi
fi

# Syntax-highlighting
curl -Lo ~/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh https://raw.githubusercontent.com/zsh-users/zsh-syntax-highlighting/master/zsh-syntax-highlighting.zsh

echo "check this file, if same as uncommented one invert comments"
#curl -Lo ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh https://raw.githubusercontent.com/zsh-users/zsh-syntax-highlighting/master/zsh-syntax-highlighting.plugin.zsh
#curl -Lo ~/.zsh/plugins/zsh-syntax-highlighting/ <change the url after uploading>
echo "put the correct url to above place after uploading to github"

# Auto-suggestions
curl -Lo ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh https://raw.githubusercontent.com/zsh-users/zsh-autosuggestions/master/zsh-autosuggestions.zsh
curl -Lo ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh https://raw.githubusercontent.com/zsh-users/zsh-autosuggestions/master/zsh-autosuggestions.plugin.zsh

# history-substring-search
curl -Lo ~/.zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh https://raw.githubusercontent.com/zsh-users/zsh-history-substring-search/master/zsh-history-substring-search.zsh

# curl -Lo ~/.zsh/custom-zsh-config <put the correct url after uploading>
echo "if you see this the url to file hasn't put yet"

# curl -Lo ~/.zsh/p10k.zsh <put the correct url after uploading>
echo "if you see this the url to file hasn't put yet"
