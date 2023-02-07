# $OpenBSD: dot.profile,v 1.7 2020/01/24 02:09:51 okan Exp $
#
# sh/ksh initialization

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
export PATH HOME TERM

export LC_ALL=en_US.UTF-8
TERM=tmux-256color

alias vim='nvim'
alias nb='newsboat'
alias mpvm='mpv --ytdl-format=18'
alias mpvb='mpv --autofit=50% --ytdl-format=22'
