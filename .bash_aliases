# ' change directory
alias v='cd ~/Videos'
alias vm='cd ~/Videos/my_videos/'
alias dt='cd ~/Desktop'
alias dl='cd ~/Downloads'
alias m='cd ~/music'
alias dm='cd ~/Documents'
alias dma='cd ~/Documents/articles'
alias dw='cd ~/drawings/'
alias dwr='cd ~/drawings/references/'
alias dwm='cd ~/drawings/my_drawings/'
alias s='cd ~/.scripts'
# project 
alias p='cd ~/projects'
alias pp='cd ~/projects/personal/'
alias pg='cd ~/projects/geonepal'
alias pw='cd ~/projects/geonepal/waling'
# blog
alias b='cd ~/Documents/blogs/August/'
alias startmpd='[ ! -s ~/.local/share/mpd/pid ] && mpd 2> /dev/null'

# program alias
alias vim="nvim"
# youtube-dl
alias yd="youtube-dl"
alias yd7="youtube-dl -f 'bestvideo[height<=720]+bestaudio'"
alias yda="youtube-dl -f 'bestaudio' -o '%(title)s.mp3'"
# stream from webcam
alias mpvcam="mpv av://v4l2:/dev/video0 --ontop --profile=low-latency --window-scale=0.35 --no-border --untimed --no-osc"

# python alias
alias vact=". ./venv/bin/activate"
alias prs="python manage.py runserver"

# general
alias xo='xdg-open'
alias music='ncmpcpp'

#common files
alias vwl='vim ~/Desktop/.worklog.md'

# custom scripts
alias cu="corona_update"
alias rs="record_screen"

# config files
alias cfb='vim ~/.bashrc'
alias cfba='vim ~/.bash_aliases'
alias cfnv='vim ~/.config/nvim/init.vim'
alias cfw='sudo nvim /etc/resolv.conf'
alias cfs='vim ~/.config/ranger/scope.sh'
alias cfr='vim ~/.config/ranger/rifle.conf'

# systemctl shortcuts
alias rsw='sudo systemctl restart NetworkManager'
