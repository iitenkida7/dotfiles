# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PS1="\[\e[1;36m\][\u@\h:\w]\$\[\e[00m\]"

# User specific aliases and functions

PATH="$PATH":/usr/local/aws-tools/ec2-api-tools/bin
PATH="$PATH":/usr/local/aws-tools/ElasticLoadBalancing/bin
PATH="$PATH":/usr/local/aws-tools/IAMCli/bin/
PATH="$PATH":/usr/local/aws-tools/CloudWatch/bin
export LANG=en_US.UTF-8
export TERM=xterm-256color

alias rm='rm -i'
alias kyou='cd ~/wkdir/`date +"%Y%m%d"`'
alias kinou="cd ~/wkdir/`date +"%Y%m%d" -d '1 days ago'`"
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls --color=auto --show-control-chars'
alias ll='ls -l'
alias grep='grep -E'
alias tmux='tmux -u'
alias sshagent="ssh-agent bash ; ssh-add ~paxi009/.ssh/id_rsa"


export HISTSIZE=50000
export HISTFILESIZE=50000
export HISTCONTROL=ignoreboth
export HISTTIMEFORMAT="%y/%m/%d %H:%M:%S  "

export GREP_COLOR='1;37;41'
export GREP_OPTIONS='--binary-files=without-match --color=auto'
export LS_COLORS='di=01;36;40:'
export LSCOLORS=gxfxcxdxbxegedabagacad
export PAGER=less
export EDITOR="vim"
export LESS='-X -i -P ?f%f:(stdin).  ?lb%lb?L/%L..  [?eEOF:?pb%pb\%..]'
export LESSOPEN='| /usr/bin/lesspipe.sh %s'


# "!"をつかって履歴上のコマンドを実行するとき、
# 実行するまえに必ず展開結果を確認できるようにする。
shopt -s histverify

# 履歴ファイルを上書きではなく追加する。
# 複数のホストで同時にログインすることがあるので、上書きすると危険だ。
shopt -s histappend

# 履歴の置換に失敗したときやり直せるようにする。
shopt -s histreedit

# 端末の画面サイズを自動認識。
shopt -s checkwinsize

# つねにパス名のテーブルをチェックする。
shopt -s checkhash

# なにも入力してないときはコマンド名を補完しない。
shopt -s no_empty_cmd_completion


complete -d cd
complete -c which
complete -c sudo
complete -v unset


if [[ -s ~/.nvm/nvm.sh ]];
 then source ~/.nvm/nvm.sh
fi

