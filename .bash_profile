export LC_ALL='ja_JP.UTF-8'
export PJDIR_OP3='/c/ProjectOP3OS/branches/'
export PJDIR_CUBE='/c/Cube/'
export PJDIR_B='/c/1_1_x/'
export PROJECT_TOOL_DIR=/c/d_mobile/convert/tool/
#history
export HISTSIZE='100000'
export HISTFILESIZE='100000'
export HISTTIMEFORMAT='%F %T '
export LS_COLORS='di=01;36:'

#alias ls='ls --show-control-chars'
alias ls='ls --color=auto -al'
alias l='ls -CF'
alias ll='ls -al --color=auto'
alias grep='grep --color'
alias df='df -h'
alias rm='rm -i'
alias p='pwd'
alias pd='pushd'
alias pp='popd'
alias vs2015='/c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio\ 14.0/Common7/IDE/devenv.exe'
alias cccc='/c/Program\ Files\ \(x86\)/CCCC/cccc.exe'
alias countFile='ls -laR|grep -c "^-"'
alias cube='cd ${PJDIR_CUBE}'
alias cubep='cd ${PJDIR_CUBE}/01Program/Program/App'
alias op3='cd ${PJDIR_OP3}'
alias op3p='cd ${PJDIR_OP3}/01Program/Program/App'
# alias gvim='/c/vim/vim80/gvim.exe &'
export PATH=$PATH:/c/vim/vim80

#for Version Control System
alias UpdateRepos='/c/GitRepos/HomeMadeTools/UpdateRepository.sh'
alias BuildForAndroid='/c/GitRepos/HomeMadeTools/BuildForAndroid.sh'
alias IwillGoHome='/c/GitRepos/HomeMadeTools/GoHome.sh'

