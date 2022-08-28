#!/bin/bash
echo "<<-------------->>"
DATE=$(date +"%a     %d.%m.%y    %H:%M")
echo "$DATE"
echo "---------------------------------------"
echo -n "$USER @ $HOSTNAME"
echo "  <$(uname -r)>"
echo "---------------------------------------"
MEMTOTINFO=$(cat /proc/meminfo | numfmt --field 2 --from-unit=Ki --to-unit=Gi|sed 's/ kB/G/g'| grep -i memtotal | awk '{print $2}' )
MEMAVLINFO=$(cat /proc/meminfo | numfmt --field 2 --from-unit=Ki --to-unit=Gi|sed 's/ kB/G/g'| grep -i memavailable | awk '{print $2}'| numfmt --field 2 --from-unit=Ki --to-unit=Gi|sed 's/ kB/G/g')
echo "MEM:   tot ${MEMTOTINFO}               idl ${MEMAVLINFO}" 
echo "---------------------------------------"
CPUUSRINFO=$(mpstat 1 1 | grep -i average | awk '{print $3}')
CPUSYSINFO=$(mpstat 1 1 | grep -i average | awk '{print $5}')
CPUIDLINFO=$(mpstat 1 1 | grep -i average | awk '{print $12}')
echo "CPU:   usr ${CPUUSRINFO}  sys ${CPUSYSINFO}  idl ${CPUIDLINFO}"
echo "---------------------------------------"
PSUSR=$(ps --user ${USER} | wc -l)
PSSYS=$(ps --user root | wc -l)
echo "PROC:  usr ${PSUSR}                sys ${PSSYS}"
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
echo "Shortcut Guide"
echo "----------------"
echo "---System---"
echo "Launcher               Meta"
echo "Dolphin              Meta-e"
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
