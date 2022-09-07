#!/bin/bash
# Author: ANISHKA PATEL
# Created: 21-08-2022 
# Last modified: 22-08-2022
# Description: Script to run in Plasma Command Output Widget

echo "<<-------------->>"
DATE=$(date +" %d.%m.%y  %a   %H:%M")
echo "$DATE"
echo ""
echo -n "$USER @ $HOSTNAME"
echo "  <$(uname -r)>"
echo ""
echo ""
MEMTOTINFO=$(cat /proc/meminfo | 
  numfmt --field 2 --from-unit=Ki --to-unit=Gi |
  sed 's/ kB//g'| grep -i memtotal | awk '{print $2}')
MEMAVLINFO=$(cat /proc/meminfo |
  numfmt --field 2 --from-unit=Ki --to-unit=Gi |
  sed 's/ kB//g'| grep -i memavailable | awk '{print $2}')
echo "MEM:    ${MEMTOTINFO}G     $((MEMTOTINFO - MEMAVLINFO))G   累 ${MEMAVLINFO}G" 
echo "---------------------------------------"
CPUUSRINFO=$(mpstat 1 1 | grep -i average | awk '{print $3}')
CPUSYSINFO=$(mpstat 1 1 | grep -i average | awk '{print $5}')
CPUIDLINFO=$(mpstat 1 1 | grep -i average | awk '{print $12}')
echo "CPU:    ${CPUUSRINFO}      ${CPUSYSINFO}   累 ${CPUIDLINFO}"
echo "---------------------------------------"
PSUSR=$(ps --user "$USER" | wc -l)
PSSYS=$(ps --user root | wc -l)
PSTOT=$(ps -ef | wc -l)
echo "PRO:    ${PSTOT}    ${PSUSR}     ${PSSYS}"
echo ""
echo "---------------------------------------"
PACPKGS=$(pacman -Qn | wc -l)
YAYPKGS=$(yay -Qm | wc -l)
FLATPKGS=$(flatpak list | wc -l)
BREWPKGS=$(brew list | wc -l)
PIPPKGS=$(pip list | wc -l)
NPMPKGS=$(npm -g list | wc -l)
CARGOPKGS=$(cargo install --list | wc -l)
GOPKGS=$(go list ... | wc -l)
echo -n "Pac    $(printf "%4d" "$PACPKGS")"
echo "   Yay    $(printf "%4d" "$YAYPKGS")"
echo -n "Brew   $(printf "%4d" "$BREWPKGS")"
echo "   Flat   $(printf "%4d" "$FLATPKGS")"
echo -n "Npm    $(printf "%4d" "$NPMPKGS")"
echo "   Pip    $(printf "%4d" "$PIPPKGS")"
echo -n "Go     $(printf "%4d" "$GOPKGS")"
echo "   Rust   $(printf "%4d" "$CARGOPKGS")"
echo "---------------------------------------"
echo ""
echo ""
echo "--------------"
echo "---  ---"
echo "Dolphin              Meta-e"
echo "KRunner          Meta-space"
echo "---  ---"
echo "Emacs                Meta-t"
echo "Neovide              Meta-T"
echo "---  ---"
echo "Chrome               Meta-i"
echo "Firefox              Meta-I"
echo "---  ---"
echo "Yakuake          Meta-Enter"
echo "Konsole          Meta-enter"
echo ""
echo "<<-------------->>"
