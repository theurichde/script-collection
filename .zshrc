# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

HISTSIZE=10000000
SAVEHIST=10000000

setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.

# Path to your oh-my-zsh installation.
export ZSH=/home/theurich/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="ys"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git python mvn vim docker)
 
source $ZSH/oh-my-zsh.sh

# User configuration

#Set Java Path Variable
JAVA_HOME=~/.software/current_java/bin
export PATH=$PATH:$JAVA_HOME

# Set Path Variable for Maven
MAVEN_HOME=~/.software/apache-maven-3.3.9/bin
M2_HOME=$MAVEN_HOME
M2=$M2_HOME/bin

# Set Path Variable for Ant
#ANT_HOME=~/.software/apache-ant-1.9.7/bin
ANT_HOME=/home/theurich/projects/hybris/eci-hybris/hybris/bin/platform/apache-ant-1.10.3/bin
export PATH=$PATH:$ANT_HOME

# Set Path Variable for Maven
export PATH=$PATH:$MAVEN_HOME:$M2

# Set Hybris Path Variables
export HYBRIS_BIN_DIR=~/projects/hybris/eci-hybris/hybris/bin
export HYBRIS_CONFIG_DIR=~/projects/hybris/eci-hybris/hybris/config
export HYBRIS_DATA_DIR=~/projects/hybris/eci-hybris/hybris/data
export HYBRIS_LOG_DIR=~/projects/hybris/eci-hybris/hybris/log
export HYBRIS_TEMP_DIR=~/projects/hybris/eci-hybris/hybris/temp/hybris

#export PATH=$PATH:$HYBRIS_BIN_DIR

export NODEJS=~/.software/node-v6.10.2-linux-x64/bin
export PATH=$PATH:$NODEJS

source ~/.zsh_aliases

#Sets vim as standard editor
export VISUAL=vim

export ANT_OPTS=-XX:MaxPermSize=1G
export IDEA_JDK=~/.software/jdk1.8.0_102

export PURE_PATH=/home/theurich/bin:/home/theurich/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin:/
