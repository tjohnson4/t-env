# Path to your oh-my-zsh installation.
export ZSH=/Users/toddjohnson/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git chucknorris frontend-search)

export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH="/Users/toddjohnson/WWW/tools/arcanist/bin:/Users/toddjohnson/npm/bin:/opt/local/bin:/opt/local/sbin:/usr/local/heroku/bin:/Users/toddjohnson/Documents/tools/s3cmd-1.5.2/s3cmd:/opt/local/bin:/opt/local/sbin:/usr/local/git/bin:/Users/toddjohnson/Documents/gs/tools/asana:/bin:/Users/toddjohnson/Documents/sdks/apache-ant-1.9.5/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/Users/toddjohnson/.vim/bundle/vim-snippets:/Users/toddjohnson/Library/Python/2.7/bin:$PATH"
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
# export MANPATH="/usr/local/man:$MANPATH"
export PYTHONPATH="$PYTHON_PATH:/Users/toddjohnson/Documents/repos/gs"
export PROD_PEM_US_WEST_1=/Users/toddjohnson/.ssh/prod-us-west-1.pem
export PROD_PEM_US_EAST_1=/Users/toddjohnson/.ssh/prod-us-east-1.pem
export PROD_PEM_US_WEST_1_FLINGO_TV=/Users/toddjohnson/.ssh/us-west-1.flingo.tv
export REPOPATH=~/Documents/repos/gs
export ANDROID_HOME=~/Library/Android/sdk
export DEV=todd.flingo.tv
export NODE_PATH="$NODE_PATH:/Users/toddjohnson/npm/lib/node_modules"

alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias pyserv="python -m SimpleHTTPServer"
alias h264_profile_json="ffprobe -v error -select_streams v:0 -show_entries stream=profile,level -of json"
alias rn="react-native"
alias tmkill="tmux kill-session -t"
alias tma="tmux a -t"
source $ZSH/oh-my-zsh.sh
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias vimconfig="vim ~/.vimrc"

export NVM_DIR="/Users/toddjohnson/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

autoload -U add-zsh-hook
load-nvmrc() {
    if [[ -f .nvmrc && -r .nvmrc ]]; then
        nvm use
    fi
}
add-zsh-hook chpwd load-nvmrc
