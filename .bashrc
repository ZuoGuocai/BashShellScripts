# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi



lias h='history'
alias j='jobs -l'
alias which='type -a'
alias ..='cd ..'
#-------------------------------------------------------------
# Pretty-print of some PATH variables:
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
#-------------------------------------------------------------
alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'
#
#-------------------------------------------------------------
# The 'ls' family (this assumes you use a recent GNU ls).
#-------------------------------------------------------------
# Add colors for filetype and  human-readable sizes by default on 'ls':
alias ls='ls -hF --color'
alias lx='ls -lXB'         #  Sort by extension.
alias lk='ls -lSr'         #  Sort by size, biggest last.
alias lt='ls -ltr'         #  Sort by date, most recent last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.
alias l='ls -CF'        #  Sort by/show access time,most recent last.
#
# The ubiquitous 'll': directories first, with alphanumeric sorting:
alias ll="ls -lv --group-directories-first"
alias lm='ll |more'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.
alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...
#-------------------------------------------------------------
alias dir="ls"                      # 模拟windows
alias lrd="ls -lR|grep '^[dl]'"     # 递归列出所有的目录,包括链接
alias lsd="ls -l|grep '^[dl]'"     # 列出所有的目录,包括链接

alias cls='clear'
alias ls='ls -trl'
alias df='df -Th'
alias which='type -all'
alias mkdir='mkdir -p'
alias tc='tar -cvzf'


EDITOR=vi
export EDITOR


function mkdircd () {
    mkdir -p "$@" && eval cd "\"\$$#\"";
    }

function topcmd (){
   history | awk '{print $2}' | sort | uniq -c | sort -rn | head -10;
   }












clear

#echo -e "I want to tell the world I'm using the Github.\n My Github http://github.com/zuoguocai "|boxes -d dog

cat <<-EOF
               _._                                             
          _.-\`\`__ ''-._                                      
     _.-\`\`    \`.  \`_.  ''-._       Hello Mesos             
 .-\`\` .-\`\`\`.  \`\`\`\/    _.,_ ''-._                      
(    '      ,       .-\`  | \`,    )                           
|\`-._\`-...-\` __...-.\`\`-._|'\` _.-'|                       
|    \`-._   \`._    /     _.-'    |                           
 \`-._    \`-._  \`-./  _.-'    _.-'                           
|\`-._\`-._    \`-.__.-'    _.-'_.-'|                          
|    \`-._\`-._        _.-'_.-'    | http://www.get.dataman.io 
 \`-._    \`-._\`-.__.-'_.-'    _.-'                           
|\`-._\`-._    \`-.__.-'    _.-'_.-'|                          
|    \`-._\`-._        _.-'_.-'    |                           
 \`-._    \`-._\`-.__.-'_.-'    _.-'                           
     \`-._    \`-.__.-'    _.-'                                
         \`-._        _.-'                                     
             \`-.__.-'                                         
                                                               
EOF
