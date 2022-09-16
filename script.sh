#!/bin/bash
# Author: ANISHKA PATEL
# Created: 21-08-2022
# Description: Script to run in Plasma Command Output Widget
# Script is customised to cater to arch plasma setups
# Please modify appropriately to cater to other setups
# Dependencies : Resolution
# - nerd-fonts : yay -S nerd-fonts-complete
# - mpstat     : pacman -S sysstat
# - iostat     : pacman -S iostat
# - ifstat     : pacman -S sysstat

DATE=$(date +" %d.%m.%y  %a   %H:%M (%z)")
KERNEL=$(uname -r | awk -F '-' '{print $1}')
DISTRO=$(uname -r | awk -F '-' '{print $NF}')
IFNAME=$(ip -brief a | grep "UP" |head| awk '{print $1}')
IFADDR=$(ip -brief a | grep "UP" |head| awk '{print $3}'| sed 's/...$//' )
echo "$DATE"
echo ""
echo "$(printf "   %8s %16s " "$DISTRO" "$KERNEL" )"
echo "$(printf "   %8s %16s " "$USER" "$HOSTNAME")"
echo "$(printf "   %8s %16s " "$IFNAME" "$IFADDR")"
echo ""
echo "---------------------------------------"
echo ""
CPUUSRINFO=$(mpstat 1 1 | grep -i average | awk '{print $3}')
CPUSYSINFO=$(mpstat 1 1 | grep -i average | awk '{print $5}')
CPUIDLINFO=$(mpstat 1 1 | grep -i average | awk '{print $12}')
echo "$(printf "CPU:   %02d%%   %02d%%  累 %02d%%" "$CPUUSRINFO" "$CPUSYSINFO" "$CPUIDLINFO")"
MEMTOTINFO=$(cat /proc/meminfo |
  numfmt --field 2 --from-unit=Ki --to-unit=Gi |
  sed 's/ kB//g'| grep -i memtotal | awk '{print $2}')
MEMAVLINFO=$(cat /proc/meminfo |
  numfmt --field 2 --from-unit=Ki --to-unit=Gi |
  sed 's/ kB//g'| grep -i memavailable | awk '{print $2}')
echo "$(printf "MEM:   %02dG   %02dG  累 %02dG" "$MEMTOTINFO" $((MEMTOTINFO - MEMAVLINFO)) "$MEMAVLINFO")"
echo ""
IONAME=$(lsblk | grep -E "disk"| head | awk '{print $1}')
IOREADINFO=$(iostat | grep "$IONAME" | awk '{print $3}')
IOWRITINFO=$(iostat | grep "$IONAME" | awk '{print $4}')
echo "$(printf "IO: %8s  %6d  %6d" "$IONAME" "$IOREADINFO" "$IOWRITINFO")"
# PSUSR=$(ps --user "$USER" | wc -l)
# PSSYS=$(ps --user root | wc -l)
# PSTOT=$(ps -ef | wc -l)
# echo "PRO:    "$PSTOT"    "$PSUSR"    "$PSSYS
# echo "---------------------------------------"
IFRXINFO=$(ifstat | grep "$IFNAME" | awk '{print $6}')
IFTXINFO=$(ifstat | grep "$IFNAME" | awk '{print $8}')
echo "$(printf "IF: %8s  %6d  %6d" "$IFNAME" "$IFRXINFO" "$IFTXINFO")"
echo ""
echo "---------------------------------------"
PACMANPKGS=$(pacman -Qn | wc -l)
YAYPKGS=$(yay -Qm | wc -l)
FLATPAKPKGS=$(flatpak list | wc -l)
BREWPKGS=$(brew list | wc -l)
PYTHONPKGS=$(pip list | wc -l)
NODEPKGS=$(npm -g list | wc -l)
RUSTPKGS=$(cargo install --list | wc -l)
GOPKGS=$(go list ... | wc -l)
echo -n "Pacman  """"$(printf "%5d" "$PACMANPKGS")"
echo "   Yay     """"$(printf "%5d" "$YAYPKGS")"
echo -n "Brew    """"$(printf "%5d" "$BREWPKGS")"
echo "   Flatpak """"$(printf "%5d" "$FLATPAKPKGS")"
echo -n "Node    """"$(printf "%5d" "$NODEPKGS")"
echo "   Python  """"$(printf "%5d" "$PYTHONPKGS")"
echo -n "Go      """"$(printf "%5d" "$GOPKGS")"
echo "   Rust    """"$(printf "%5d" "$RUSTPKGS")"
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
