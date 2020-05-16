# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
# User Info
export USERNAME="Liu Haibing"
export NICKNAME="seaice6"

# User specific aliases and functions
alias ..="cd .."
alias ...="cd ../.."
alias cls="clear"
alias gits="git status"
alias mv="mv -i"
alias rm="rm -i"
alias cp="cp -i"
alias wc="wc -l"   ##统计行数
alias dfind="find -type d -name"   ##查找文件夹
alias ffind="find -type f -name"   ##查找文件
alias rst="source ~/.bashrc"
alias vst="g ~/.bashrc"
alias vvm="g ~/.vimrc"
alias png="eog"             ## eog | xdg-open | gio open
alias g="gvim"

#echo -ne "Hello,$NICKNAME! It's "; date '+%A, %B %-d %Y %H:%M'
echo -ne "Hello,$NICKNAME! It's "; date '+%Y年%b%d日 %A %H:%M:%S'
source /etc/profile
