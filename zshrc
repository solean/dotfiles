# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/cschnabel/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="apple"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export $JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home/"
export PATH="/Applications/Postgres.app/Contents/Versions/9.6/bin:$PATH"
export PGDATABASE=clearview
export PGUSER=clearview

export M2_HOME=/usr/local/Cellar/maven/3.3.9/libexec
export MAVEN_OPTS="-Xms512m -Xmx512m -XX:PermSize=246m -XX:MaxPermSize=512m "
export M2=$M2_HOME/bin
export PATH=$M2:$PATH


alias ports='lsof -i -P|grep -i "listen"'
alias resolution='system_profiler SPDisplaysDataType | grep Resolution'
alias mci='mvn -DskipTests clean install'
alias run='./run.sh'
alias cvbuild='mvn clean package -Pwro4j,prod -DskipTests'
alias cvqa='mvn clean verify -Pintegration,wro4j'
alias gdc="git diff --color | cat"
alias vrc="vim ~/.vimrc"
alias zrc="vim ~/.zshrc"
alias stup="vim +'normal Go' +'r!date' ~/dev/did.txt"
alias c="clear"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="$PATH:/usr/local/bin"

