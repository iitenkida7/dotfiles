# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#水色
#PS1="\[\e[1;36m\][\u@\h:\w]\$\[\e[00m\]"
#しゅん色
#PS1="\[\e[1;31m\][\u@\h:\w]\$\[\e[00m\]"
#黄緑
PS1="\[\e[1;32m\][\u@\h:\w]\$\[\e[00m\]"

# User specific aliases and functions

export LANG=en_US.UTF-8
export TERM=xterm-256color

case "${OSTYPE}" in
darwin*)
  alias ls="ls -G"
  alias ll="ls -lG"
  ;;
linux*)
  alias ls='ls --color=auto'
  alias ll='ls -l --color'
  ;;
esac


alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -l'
alias grep='grep -E'
alias tmux='tmux -u'

alias kyou='mkdir -p ~/wkdir/`date +"%Y%m%d"` ; cd ~/wkdir/`date +"%Y%m%d"` '

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
export LESS='-X -R -i -P ?f%f:(stdin).  ?lb%lb?L/%L..  [?eEOF:?pb%pb\%..]'
export LESSOPEN='| /usr/bin/lesspipe.sh %s'
export LESSCHARSET=utf-8

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

