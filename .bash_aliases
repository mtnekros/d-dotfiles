# ' change directory
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias vids='cd ~/Videos'
alias vm='cd ~/Videos/my_videos/'
alias dt='cd ~/Desktop'
alias dl='cd ~/Downloads'
alias m='cd ~/music'
alias dm='cd ~/Documents'
alias articles='cd ~/Documents/articles'
alias meme='cd ~/Videos/memes'
alias dw='cd ~/drawings/'
alias md='cd ~/drawings/my_drawings/'
alias .f="cd ~/.dotfiles"
alias s='cd ~/.dotfiles/scripts'
# project 
alias p='cd ~/projects'
alias pg='cd ~/projects/geonepal'
alias pw='cd ~/projects/geonepal/waling'
alias pd='cd ~/projects/geonepal/damak'
alias pa='cd ~/projects/apeirogon'
# blog
alias b='cd ~/Documents/blogs/'
alias startmpd='[ ! -s ~/.local/share/mpd/pid ] && mpd 2> /dev/null'

# program alias
alias vim="nvim"
alias v="nvim"
# youtube-dl
alias yd="youtube-dl"
alias yd7="youtube-dl -f 'bestvideo[height<=720]+bestaudio' -o '%(title)s.%(ext)s'"
alias yda="youtube-dl -f 'bestaudio' -o '%(title)s.mp3'"
# stream from webcam
alias mpvcam="mpv av://v4l2:/dev/video0 --ontop --profile=low-latency --window-scale=0.35 --no-border --untimed --no-osc"
alias mpvcam_regular="mpv av://v4l2:/dev/video0 --profile=low-latency --window-scale=0.35 --no-border --untimed --no-osc"

# python alias
alias vact=". ./venv/bin/activate"
alias prs="python manage.py runserver"

# general
alias xo='xdg-open'
alias music='ncmpcpp'
alias weather='curl wttr.in'

#common files
alias vwl='vim ~/Desktop/.worklog.md'

# custom scripts
alias cu="corona_update"
alias rs="record_screen"

# config files
alias cfb='vim ~/.bashrc'
alias cfba='vim ~/.bash_aliases'
alias cfnv='vim ~/.config/nvim/init.vim'
alias cfw='sudo vim /etc/resolv.conf'
alias cfs='vim ~/.config/ranger/scope.sh'
alias cfr='vim ~/.config/ranger/rifle.conf'
alias cfp='vim ~/.config/picom/picom.conf'

# systemctl shortcuts
alias rsw='sudo systemctl restart NetworkManager'

# localstack alias
alias aws='aws --endpoint-url=http://localhost:4566'
alias runlocalstack='docker run --rm -it -p 4566:4566 -p 4510-4559:4510-4559 localstack/localstack'
