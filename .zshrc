source ~/.antigen.zsh

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme fox
# antigen theme bhilburn/powerlevel9k powerlevel9k

antigen apply

setxkbmap -model abnt2 -layout br -variant abnt2 caps:escape
# . /usr/lib/python3.5/site-packages/powerline/bindings/zsh/powerline.zsh
