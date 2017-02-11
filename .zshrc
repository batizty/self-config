# Path to your oh-my-zsh installation.
export ZSH=/Users/tuoyu/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"
#ZSH_THEME="macovsky"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew)

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
#export LANG="en_US;en_US.UTF-8;zh_CN.GB2312;zh_CN.UTF-8"
#export LC_ALL=C

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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


### Self Settings ###
CLICOLOR=1
LSCOLORS=gxfxcxdxbxegedabagacad

alias ll="ls -lth"
alias GoWork="cd ~/MyWork"

### autologin remote sina remote server and innter server ###
function auto_login_server {
    if [[ $1 == "inner" ]] then
        auto_login_sever_ip="10.210.66.44"
        #auto_login_sever_ip="10.210.224.66"
        auto_login_pwd=`cat ~/.ssh/inner_server_pgp`
        login_server_ip=$2
    else
        auto_login_sever_ip="202.106.182.212"
        auto_login_pwd=`cat ~/.ssh/remote_server_pgp`
        login_server_ip=$1
    fi

    #echo "server id = $auto_login_sever_ip"
    #echo "server passwd = $auto_login_pwd"
    #echo "login_server_ip = $login_server_ip"

    expect ~/.ssh/auto_login_server.sh $auto_login_sever_ip $auto_login_pwd $login_server_ip
}

### Login Remote Server Command ###
alias GoRemoteServer="auto_login_server"
alias GoInnerServer="auto_login_server inner"
alias Go233="auto_login_server 10.39.6.233"
alias Go64="auto_login_server 10.77.136.64"

### scala 2.11.8 ###
export SCALA_HOME="/usr/local/Cellar/scala/2.11.8"
export PATH=$SCALA_HOME/bin:$PATH

### Java 1.7 ###
export JAVA_1_7_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home"

### Java 1.8 ###
export JAVA_1_8_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home"

### Java Home Setting ###
export JAVA_HOME=$JAVA_1_8_HOME

### Maven Settrings ###
export MAVEN_HOME="/Users/tuoyu/MyWork/maven/apache-maven-3.3.9"
export PATH=$MAVEN_HOME/bin:$PATH

### Zookeeper Settings ###
export ZOOKEEPER_HOME="/Users/tuoyu/MyWork/zookeeper/zookeeper-3.3.6"
export PATH=$ZOOKEEPER_HOME/bin:$PATH

### Storm Settings ###
export STORM_HOME="/Users/tuoyu/MyWork/apache-storm-0.9.4"
export PATH=$STORM_HOME/bin:$PATH

### Gradle Settings ###
export GRADLE_HOME="/Users/tuoyu/MyWork/gradle/gradle-3.0"
export PATH=$GRADLE_HOME/bin:$PATH

### Hadoop ####
export HADOOP_HOME="/Users/tuoyu/MyWork/hadoop"
export PATH=$HADOOP_HOME/bin:$PATH
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop

### Hadoop 2.7.3 ###
export HADOOP_2_7_3_HOME="/Users/tuoyu/MyWork/hadoop-2.7.3"

### Hadoop 2.4.1 ###
export HADOOP_2_4_1_HOME="/Users/tuoyu/MyWork/hadoop-2.4.1"

### Grails ###
export GRAILS_HOME="/Users/tuoyu/MyWork/grails/grails-2.4.3"
export PATH=$GRAILS_HOME/bin:$PATH

### Spark ###
export SPARK_HOME="/Users/tuoyu/MyWork/spark-src/spark"
#export SPARK_HOME="/Users/tuoyu/MyWork/spark"
#export PATH=$SPARK_HOME/bin:$PATH

### ICloud Work ###
alias GoCloudWork="/Users/tuoyu/Library/Mobile Documents/com~apple~CloudDocs/MyCloudWork"

