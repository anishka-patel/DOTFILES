#!/bin/bash
# Author: ANISHKA PATEL
# Created: 21-08-2022 
# Last modified: 22-08-2022
# Description: Script to run in Plasma Command Output Widget

echo "<<-------------->>"
DATE=$(date +"%a     %d.%m.%y    %H:%M")
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
echo "MEM:   tot ${MEMTOTINFO}G   use $((MEMTOTINFO - MEMAVLINFO))G   idl ${MEMAVLINFO}G" 
echo "---------------------------------------"
CPUUSRINFO=$(mpstat 1 1 | grep -i average | awk '{print $3}')
CPUSYSINFO=$(mpstat 1 1 | grep -i average | awk '{print $5}')
CPUIDLINFO=$(mpstat 1 1 | grep -i average | awk '{print $12}')
echo "CPU:   usr ${CPUUSRINFO}   sys ${CPUSYSINFO}   idl ${CPUIDLINFO}"
echo "---------------------------------------"
PSUSR=$(ps --user "$USER" | wc -l)
PSSYS=$(ps --user root | wc -l)
PSTOT=$(ps -ef | wc -l)
echo "PRO:   tot ${PSTOT}   usr ${PSUSR}   sys ${PSSYS}"
echo ""
echo "---------------------------------------"
PACMANPKGS=$(pacman -Q | wc -l)
FLATPKGS=$(flatpak list | wc -l)
BREWPKGS=$(brew list | wc -l)
NIXPKGS=$(nix-env -q | wc -l)
echo -n "Pacman  : ${PACMANPKGS}"
echo "         Flatpak : ${FLATPKGS}"
echo -n "Brew    : ${BREWPKGS}"
echo "           Nix     : ${NIXPKGS}"
echo "---------------------------------------"
echo ""
echo "Shortcuts"
echo "----------------"
echo "---System---"
echo "Launcher               Meta"
echo "Dolphin              Meta-e"
echo "Vifm                 Meta-E"
echo "KRunner          Meta-space"
echo "---Editor---"
echo "Emacs                Meta-t"
echo "Neovide              Meta-T"
echo "---Browser---"
echo "Chrome               Meta-i"
echo "Firefox              Meta-I"
echo "---Terminal---"
echo "Yakuake          Meta-Enter"
echo "Konsole          Meta-enter"
echo ""
echo "<<-------------->>"
