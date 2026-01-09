# Text colors
Red='\[\e[31m'
Green='\[\e[32m'

Reset='\[\e[0m\]'

battery() {
  if [ -d /sys/class/power_supply/BAT1 ]; then
    cat /sys/class/power_supply/BAT1/capacity 2>/dev/null
  fi
}

PS1="${Green}\u@\h \w${Reset} ${Red}bat:$(battery)%${Reset} > "
