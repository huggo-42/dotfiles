# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git chucknorris zsh-history-substring-search)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source ~/.zsh_profile

SAVEHIST=1000 # Save most-recent 1000 lines
HISTFILE=~/.zsh_history

alias studio="~/Software/android-studio/bin/studio.sh"

alias flutter="/home/huggo/Software/flutter" # it's a symbolic link

alias suicide="pkill -u huggo"

alias emulator_start_1Pixel4API36="/home/huggo/Android/Sdk/emulator/emulator @1Pixel4API36"
alias emulator_start_2Pixel4API36="/home/huggo/Android/Sdk/emulator/emulator @2Pixel4API36"

alias zen="~/Software/zen.AppImage &"

export PATH="/usr/local/go/bin:$PATH"

JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64"
export JAVA_HOME
export PATH="$PATH:$JAVA_HOME/bin"

export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$PATH":"$HOME/.nimble/bin"
export PATH="$PATH":"$HOME/go/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


export GPG_TTY=$(tty)

alias wutter="timer 1m && terminal-notifier -message 'Wutter'\
  -title 'Drink water! Stay hard :D'\
  -appIcon '~/Pictures/pomo.png'\
  -sound crystal"

alias work="timer 1m && terminal-notifier -message 'Pomodoro'\
  -title 'Break is over! Get back to work :D'\
  -appIcon '~/Pictures/pomo.png'\
  -sound crystal"

alias rest="timer 1m && terminal-notifier -message 'Pomodoro'\
  -title 'Break is over! Get back to work :D'\
  -appIcon '~/Pictures/pomo.png'\
  -sound crystal"

declare -A pomo_options
pomo_options["work"]="50"
pomo_options["rest"]="10"
pomo_options["wutter"]="15"

pomodoro () {
  if [ -n "$1" -a -n "${pomo_options["$1"]}" ]; then
  val=$1
  echo $val | lolcat 2>/dev/null
  timer ${pomo_options["$val"]}m
  spd-say "'$val' session done"
  fi
}

alias pomo_work="pomodoro 'work'"
alias pomo_rest="pomodoro 'rest'"
alias pomo_water="pomodoro 'water'"


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/home/huggo/.opam/opam-init/init.zsh' ]] || source '/home/huggo/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration

# bun completions
[ -s "/home/huggo/.bun/_bun" ] && source "/home/huggo/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/Software/zig-x86_64-linux-0.14.1:$PATH"

# bind -x '"\C-x\C-e": edit_and_execute'
function edit_and_execute() {
  fc -e vim
}

bindkey '^X^E' edit_and_execute

export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/bin/jq:$PATH"

alias vim="nvim ."

alias ls=exa

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - bash)"

eval "$(zoxide init zsh)"

export TERM='xterm-256color'

alias fzmux="tmux-sessionizer"

alias caps_as_esc_on="setxkbmap -option caps:escape"
alias caps_as_esc_off="setxkbmap -option"

alias background_image_and_picom="feh --bg-scale ./restaurant_end_of_universe1500x500.jpeg & picom"

alias set_bg="~/scripts/set_bg.sh"
