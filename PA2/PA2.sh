ls ~/X &> /dev/null || ln -s /dev/null ~/X
ls ~/_ &> /dev/null || ln -s ~/PA2/rooms ~/_
cd ~/PA2;rm -rf rooms;tar -xf rooms.tar
cd rooms/receivingRoom;PS1=">"

alias x='cat'
alias score='echo You have scored `ls ~/_/treasureRoom/|fgrep -hw -e gold -e silver -e bracelet -e diamond -e platinum|wc -l`0 points.'
alias quit='score;exit'
alias nogo='echo You cannot go that way.'
alias n='basename `pwd`|fgrep -hw "s" &>/dev/null && cd ..||cd n &>~/X && disp||nogo'
alias e='basename `pwd`|fgrep -hw "w" &>/dev/null && cd .. ||cd e &>~/X && disp||nogo'
alias w='basename `pwd`|fgrep -hw "e" &>/dev/null && cd ..||cd w &>~/X && disp||nogo'
alias s='basename `pwd`|fgrep -hw "n" &>/dev/null && cd ..||cd s &>~/X && disp||nogo'
alias nw='basename `pwd`|fgrep -hw "se" &>/dev/null && cd ..||cd nw &>~/X && disp||nogo'
alias sw='basename `pwd`|fgrep -hw "ne" &>/dev/null && cd ..||cd sw &>~/X && disp||nogo'
alias d='basename `pwd`|fgrep -hw "u" &>/dev/null && cd ..||cd d &>~/X && disp||nogo'
alias se='echo `ls` | fgrep -hw "se" &>/dev/null && basename `pwd`|fgrep -hw "nw" &>/dev/null && cd ..||cd se &>~/X && disp||nogo'
alias ne='echo `ls` | fgrep -hw "ne" &>/dev/null && basename `pwd`|fgrep -hw "sw" &>/dev/null && cd ..||cd ne &>~/X && disp||nogo'
alias u='echo `ls` | fgrep -hw "u" &>/dev/null && basename `pwd`|fgrep -hw "d" &>/dev/null && cd ..||cd u &>~/X && disp||nogo'

alias l='mv 1 9&>~/X; disp'
alias disp='((ls 9 &> /dev/null && cat description)||(ls 1 &> /dev/null && head -1 description);(mv 9 1 &> /dev/null;dispmessages))'
alias dispmessages='fgrep -hw `ls|paste ~/_/es -` -h ~/_/There | cut -d ";" -f1 ;echo $? &>/dev/null'

alias i='echo You currently have:;(cd ~/_/i/i; find . -name "*"|fgrep -h -e "/" &>/dev/null && ls|xargs -n1 echo A)'
alias getall='ls *[gwvrnpakol][hemumlpnex][etdyprmsl]&>/dev/null && mv `ls *[gwvrnpakol][hemumlpnex][etdyprmsl]|sed '/pipes/d'` ~/_/i/_&>~/X||echo Nothing to take.; (cd ~/_/i/_;find . -name "*"|fgrep -h -e "/" &>/dev/null && ls|xargs -n1 echo "Taken: a")&&mv ~/_/i/_/* ~/_/i/i&>~/X'


alias dropweight='ls ~/_/i/i|fgrep -hw -e weight > \dev\null && ls|fgrep -hw -e "button" > \dev\null && mv ./../d ./../.d && cd .. && ln -s ~/_/buttonRoom d && cd d;(ls ~/_/i/i|fgrep -hw -e "weight" > \dev\null || echo "You do not have that."; ls ~/_/i/i|fgrep -hw -e weight > \dev\null && mv ~/_/i/i/weight ./ && echo "Done" && ls|fgrep -hw -e "button" > \dev\null && echo "A passageway opens.")2>~/X'
alias press='(cat | fgrep -hw -e button>/dev/null && cat button || echo "You cannot press that.") <'

alias put='(ls|fgrep -hw -e "urinal" >/dev/null && echo "You hear it plop down in some water below." && ls ~/_/i/i/[bdgps][riol][al][cmdtv]* &> /dev/null && mv ~/_/i/i/[bdgps][riol][al][cmdtv]* ~/PA2/rooms)||(ls|fgrep -hw -e "chute" > /dev/null && echo "You hear it slide down the chute and off into the distance."  && ls ~/_/i/i/[bdgps][riol][al][cmdtv]* &> /dev/null && mv ~/_/i/i/[bdgps][riol][al][cmdtv]* ~/_/treasureRoom && score)||echo "Nothing to put treasures into."'
alias flush='echo "Whoooosh!!";(cd ~/_ && ls *[gwvrnpakol][hemumlpnex][etdyprmsl]&>/dev/null && mv `ls *[gwvrnpakol][hemumlpnex][etdyprmsl]|sed '/pipes/d'` ~/_/treasureRoom && score)'

l
