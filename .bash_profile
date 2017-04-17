#history
export HISTSIZE='100000'
export HISTFILESIZE='100000'
export HISTTIMEFORMAT='%F %T '
export LS_COLORS='di=01;36:'


#alias ls='ls --show-control-chars'
alias ls='ls --color=auto -al'
alias ll='ls -al --color=auto'
alias grep='grep --color'
alias df='df -h'
alias rm='rm -i'
alias p='pwd'
alias vs2015='/c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio\ 14.0/Common7/IDE/devenv.exe'
alias cccc='/c/Program\ Files\ \(x86\)/CCCC/cccc.exe'
alias countFile='ls -laR|grep -c "^-"'
# alias gvim='/c/vim/vim80/gvim.exe &'
export PATH=$PATH:/c/vim/vim80

#for Version Control System
alias UpdateRepos='/c/GitRepos/HomeMadeTools/UpdateRepository.sh'
alias BuildForAndroid='/c/GitRepos/HomeMadeTools/BuildForAndroid.sh'
alias IwillGoHome='/c/GitRepos/HomeMadeTools/GoHome.sh'

