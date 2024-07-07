#!/bin/bash

echo -e "\nClonning the PowerLevel10k"
git clone --depth=1 "https://github.com/romkatv/powerlevel10k.git" "${HOME}/.zsh/powerlevel10k"

echo "source ${HOME}/.zsh/powerlevel10k/powerlevel10k.zsh-theme" >> "${HOME}/.zshrc"

if [[ ! -d "${HOME}/.zsh/plugins" ]]; then
   mkdir -p "${HOME}/.zsh/plugins/zsh-syntax-highlighting"
   mkdir -p "${HOME}/.zsh/plugins/zsh-autosuggestions"
   mkdir -p "${HOME}/.zsh/plugins/zsh-history-substring-search"
    elif [[ ! -d "${HOME}/.zsh/plugins/zsh-syntax-highlighting" ]]; then
       mkdir -p "${HOME}/.zsh/plugins/zsh-syntax-highlighting"
    fi
   elif [[ ! -d "${HOME}/.zsh/plugins/zsh-autosuggestions" ]]; then
       mkdir -p "${HOME}/.zsh/plugins/zsh-autosuggestions"
   fi
   elif [[ ! -d "${HOME}/.zsh/plugins/zsh-history-substring-search" ]]; then
       mkdir -p "${HOME}/.zsh/plugins/zsh-history-substring-search"
   fi
fi

# Syntax-highlighting
echo -e "\nzsh-syntax-highlighting.zsh"
curl -Lo "${HOME}/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" https://raw.githubusercontent.com/zsh-users/zsh-syntax-highlighting/master/zsh-syntax-highlighting.zsh

echo -e "\nzsh-syntax-highlighting/.revision-hash"
curl -Lo "${HOME}/.zsh/plugins/zsh-syntax-highlighting/.revision-hash" https://raw.githubusercontent.com/zsh-users/zsh-syntax-highlighting/master/.revision-hash

echo -e "\nzsh-syntax-highlighting/.revision-hash"
curl -Lo "${HOME}/.zsh/plugins/zsh-syntax-highlighting/.revision-hash" https://raw.githubusercontent.com/zsh-users/zsh-syntax-highlighting/master/.version

echo -e "\ncheck this file, if same as uncommented one invert comments"
echo -e "zsh-syntax-highlighting.plugin.zsh"
#curl -Lo ${HOME}/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh https://raw.githubusercontent.com/zsh-users/zsh-syntax-highlighting/master/zsh-syntax-highlighting.plugin.zsh
curl -Lo "${HOME}/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh" https://raw.githubusercontent.com/mr-alham/My-Home-Lab/main/Zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh


echo -e "\nzsh-syntax-highlighting/highlighters/"
git clone --filter=blob:none https://github.com/zsh-users/zsh-syntax-highlighting --sparse "${HOME}/.zsh/plugins/zsh-syntax-highlighting/"

cd "${HOME}/.zsh/plugins/zsh-syntax-highlighting/"

git config core.sparseCheckout true

echo "/highlighters/*" > .git/info/sparse-checkout
git sparse-checkout init

# Auto-suggestions
echo -e "\nzsh-autosuggestions.zsh"
curl -Lo "${HOME}/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" https://raw.githubusercontent.com/zsh-users/zsh-autosuggestions/master/zsh-autosuggestions.zsh

echo -e "\nzsh-autosuggestions.plugin.zsh"
curl -Lo "${HOME}/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh" https://raw.githubusercontent.com/zsh-users/zsh-autosuggestions/master/zsh-autosuggestions.plugin.zsh

# history-substring-search
echo -e "\nzsh-history-substring-search.zsh"
curl -Lo "${HOME}/.zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh" https://raw.githubusercontent.com/zsh-users/zsh-history-substring-search/master/zsh-history-substring-search.zsh

echo -e "\ncustom-zsh-config"
curl -Lo "${HOME}/.zsh/custom-zsh-config" https://raw.githubusercontent.com/mr-alham/My-Home-Lab/main/Zsh/custom-zsh-config

echo -e "\np10k.zsh"
curl -Lo "${HOME}/.zsh/p10k.zsh" https://raw.githubusercontent.com/mr-alham/My-Home-Lab/main/Zsh/p10k.zsh

echo -e "\n.zshrc"
curl -Lo "${HOME}/.zshrc" https://raw.githubusercontent.com/mr-alham/My-Home-Lab/main/Zsh/zshrc
