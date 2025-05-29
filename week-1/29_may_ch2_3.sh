#To list previous commands in history after argument 760
fc -l 760

#The fc -l without any arguments will show last 16 commands
fc -l

# To edit the command and execute in new line
fc -e command

# To get no line numbers in history
fc -ln

# To refer to specific command line liie 2
!2

# TO print bindings in currentty
bind -P

# To open tprofile
source .bash_profile

# To use aliases like for grep
alias gerp=grep

# To make value of alias end i blank, surround it with quotes
alias pwd='pwd'

# SIngle letter options likr for set -o noglob
set -f

