# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.  Look in ~/.oh-my-zsh/themes/ Optionally,
# if you set this to "random", it'll load a random theme each time that
# oh-my-zsh is loaded.
export ZSH_THEME="robbyrussell"
#export ZSH_THEME="lk"

# Set to this to use case-sensitive completion export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks export
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls export
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal
# title.  export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in
# ~/.oh-my-zsh/plugins/*) Example format: plugins=(rails git textmate ruby
# lighthouse)
#plugins=(archlinux bundler extract gnu-utils rails3 redis-cli rvm vundle git rails ruby)
plugins=(extract gnu-utils vundle)
#plugins=(archlinux bundler extract gnu-utils rails3 redis-cli rvm vundle
#rails ruby)

source $ZSH/oh-my-zsh.sh

#export TOOL_PATH=~/tools


#export JAVA_HOME=$TOOL_PATH/jdk1.6.0_25 export
#JRE_HOME=$TOOL_PATH/jdk1.6.0_25/jre export
#PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin export
#CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib:



# Customize to your needs...
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:$PATH

# export CDPATH="${CDPATH}:/mnt/share/work/project/r2k/code"


#export
#PATH=$TOOL_PATH/android-sdk-linux_x86/tools:$TOOL_PATH/android-sdk-linux_x86/platform-tools:$PATH
#export PATH=$TOOL_PATH/jdk1.6.0_25/bin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.

#proxy="http://proxysh.zte.com.cn:80" proxy="http://proxynj.zte.com.cn:80"

#export http_proxy=$proxy export https_proxy=$proxy export ftp_proxy=$proxy

set -o vi

# > do not overwrite
set -o noclobber

PATH=$PATH:$HOME/.rvm/bin:$HOME # Add RVM to PATH for scripting

alias epv='emerge -pv'
alias eum='sudo emerge --autounmask-write'
alias e='sudo emerge'
#alias s='_ -E'
alias f='_ flaggie'
alias eqf='equery f'
alias gentoo32='sudo xhost local:localhost;sudo linux32 chroot /mnt/gentoo32 /bin/bash'
alias pdfexchange='sudo xhost local:localhost;sudo linux32 chroot /mnt/gentoo32 wine /mnt/share/Program\ Files/Tracker\ Software/PDF\ Viewer/PDFXCview.exe &'
alias rmm='trash-put'
# alias rm='rm -i'
#
alias pdf='wine ~/.wine/drive_c/Program\ Files/Tracker\ Software/PDF\ Viewer/PDFXCview.exe &'

LANG="en_US.UTF-8"
LC_CTYPE="en_US.UTF-8"
LC_ALL="en_US.UTF-8"

autoload -U compinit && compinit
autoload -U bashcompinit && bashcompinit
[[ -s "/home/users/jinlei04/.jumbo/etc/bashrc" ]] && source "/home/users/jinlei04/.jumbo/etc/bashrc"


# export PATH="${PATH}:/opt/crosstools/bin"
# export PATH="${PATH}:/home/jinleileiking/crosstools/angstrom/usr/local/angstrom/arm/bin"
# export PATH="${PATH}:/home/jinleileiking/crosstools/linaro/gcc-linaro-arm-linux-gnueabihf-4.8-2014.02_linux/arm-linux-gnueabihf/bin"
# export PATH="${PATH}:/mnt/share/tools/all/you-get"
#export PATH="${PATH}:/home/users/jinlei04/store/php/phplib/phptest/UnitTest/tools:/home/users/jinlei04/store/php/bin"
#export PATH="/home/users/jinlei04/store/php/bin:/home/users/jinlei04/store/php/phplib/phptest/UnitTest/tools:{$PATH}"
# export PATH=${JUMBO_ROOT}/opt/gcc49/bin:$PATH
export PATH=/home/users/jinlei04/tools/php/bin:$PATH
export PATH=/home/users/jinlei04/fpu/php/bin:$PATH
# export PATH=/home/users/jinlei04/store/php/bin:$PATH
# export PATH="/opt/compiler/gcc-4.8.2/bin:{$PATH}"

source ${JUMBO_ROOT}/opt/sun-java8/sun-java8.sh

TERM=xterm

#rvm use default
