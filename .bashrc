#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


# // Colors
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias dmesg='dmesg --color=always | less'

# // GIT
alias gca='git commit -a'
alias gp='git push'
alias ga='git add'

# // General
alias vim='nvim'
alias rm='trash'
alias ls='exa -la'


# // Tools
alias kill-exe='kill $(pgrep exe)' # Kills dumb wine stuff
alias exec-order-66='sudo pacman -Qtdq | sudo pacman -Rns -'

# // For arduino
alias au='sudo chmod a+rw /dev/ttyACM0' 
alias auu='sudo chmod a+rw /dev/ttyUSB0'

# // Youtube Download
alias yt-mp3='youtube-dl -x --audio-format mp3 --prefer-ffmpeg --output "~/Music/Downloads/%(title)s.%(ext)s"'
alias yt-mp4='youtube-dl --format mp4 --output "~/Videos/Downloads/%(title)s.%(ext)s"'
alias yt-wb='youtube-dl --format webm --output "~/Videos/Downloads/%(title)s.%(ext)s"'
alias yt-fl='youtube-dl -x --audio-format flac --prefer-ffmpeg --output "~/Music/Downloads/%(title)s.%(ext)s"'


# // Layouts

alias lsk='setxkbmap sk qwerty'
alias len='setxkbmap en_US qwerty'

# // Archive extraction

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
