# zsh-config

## Installation
Place the `.zshrc` file the your home user directory.

Clone the needed plugins in a `.zsh` directory:
```
mkdir -p ~/.zsh
cd ~/.zsh
git clone https://github.com/zsh-users/zsh-completions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-history-substring-search.git
```

Download Docker completion script:
```
mkdir -p ~/.zsh/docker-completions
curl -fLo ~/.zsh/docker-completions/_docker https://raw.githubusercontent.com/docker/cli/master/contrib/completion/zsh/_docker
```
