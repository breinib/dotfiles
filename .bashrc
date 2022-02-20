# ~/.bashrc
#

# Terminal transparency
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
if [[ $TERM = "st-256color" ]]; then
	transset-df "0.70" --id "$WINDOWID" >/dev/null
fi

# set default editor
export EDITOR="nvim"

#change directory colors
export LS_COLORS=$LS_COLORS:'di=0;35:fi=92:ln=36:ex=96' ;
alias ls='ls --color'
alias config='/usr/bin/git --git-dir=$HOME/nochmal --work-tree=$HOME'
alias ffnegate="ffplay -vf 'lutrgb=r=maxval+minval-val:g=maxval+minval-val:b=maxval+minval-val lutyuv=y=maxval+minval-val:u=maxval+minval-val:v=maxval+minval-val'"
alias news="newsboat"
alias bye="sudo shutdown -h now"
alias doc2txt="libreoffice --headless --convert-to 'txt:Text (encoded):UTF8'"
alias lutris="devour lutris"
alias mpv="mpv --hwdec=auto"
alias ffmpeg="/opt/ffmpeg/bin/ffmpeg"
alias mail="neomutt"
alias ffplay="/opt/ffmpeg/bin/ffplay"
alias booty="sudo reboot -h now"
alias ffmchrom="ffplay -vf 'chromahold=color=FE2E01:similarity=0.4'"
alias pdf="zathura"
alias code="vscode"
alias vim="nvim"
alias ll="ls -la"
alias ff="devour firefox"
alias yta="yt-dlp -x -f bestaudio/best"
alias findvid="ytfzf -t"
alias findody="ytfzf -cO"
alias copyvid="ytfzf -L"
alias gimp="devour gimp"
alias chromium="devour chromium"
alias web="devour firefox"
alias nvim="transset-df "0.86" --id "$WINDOWID" >/dev/null && nvim"

# Set path
export PATH="$PATH:/home/breini/.local/bin"

# aliases for returning to previous folder via dots
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../.."
alias .........="cd ../../../../../../../.."
alias ..........="cd ../../../../../../../../.."
alias ...........="cd ../../../../../../../../../.."
alias ............="cd ../../../../../../../../../../.."
alias .............="cd ../../../../../../../../../../../.."

# Change folders without cd command
shopt -s autocd

# Prompt
if [[ $(id -u) -eq 0 ]];then
    # ps1 for root user
    export PS1='👿 [\u@\h \W]\$ '
else
    # ps1 for normal user
    export PS1='\[\033[31m\][👽\[\033[36m\]\u\[\033[32m\]@\[\033[33m\]\h \[\033[35m\]\W]\$ \[\033[00m'
fi
