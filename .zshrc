# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails ruby)

source $ZSH/oh-my-zsh.sh

#export TOOL_PATH=~/tools


#export JAVA_HOME=$TOOL_PATH/jdk1.6.0_25 
#export JRE_HOME=$TOOL_PATH/jdk1.6.0_25/jre 
#export PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin 
#export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib:



# Customize to your needs...
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:$PATH
#export PATH=$TOOL_PATH/android-sdk-linux_x86/tools:$TOOL_PATH/android-sdk-linux_x86/platform-tools:$PATH
#export PATH=$TOOL_PATH/jdk1.6.0_25/bin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.

proxy="http://proxy.zte.com.cn:80"

export http_proxy=$proxy
export https_proxy=$proxy

set -o vi
