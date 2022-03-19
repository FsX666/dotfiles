alias ll='ls -lA'
alias la='ls -A'
alias l='ls -CF'
alias lt='ls -lAtr'
alias vi="vim"
alias scpresume="rsync --partial --progress --rsh=ssh"
alias record="script -t 2>~/record.time -a ~/record.script"
alias replay="scriptreplay ~/record.time ~/record.script"
alias pdf_concat='echo "pdftk toto1.pdf toto2.pdf cat output toto.pdf"'

# Add an "alert" alias for long running commands.  Use like so:
#alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias update_cf_cli='cd ~ && curl -L "https://cli.run.pivotal.io/stable?release=linux64-binary&source=github" | tar -xz && sudo mv cf /usr/local/bin/'
alias python_vendor="pip download -r requirements.txt --no-binary=:all: -d vendor"
alias dkrclean='docker rmi $(docker images -a -q)'
alias dkrvolumeprune='docker volume prune'
alias dkrrmexit='docker rm $(docker ps -a -f status=exited -q)'
alias dkrrmall='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'
alias dkrlistvolume='docker volume ls -f dangling=true'
alias dkrhadolint='docker run --rm -i hadolint/hadolint < Dockerfile' 
alias dkrwatch='watch -n1 "docker ps -a"'
alias nm_vpn_start='nmcli conn up id client'
alias nm_show='nmcli con show'
alias nm_vpn_stop='nmcli conn down id client'
alias ssh_tunnel_example="ssh -4 -L 3306:localhost:30000 ${LDAP_USER}@server -N"
alias get_window_property='xprop | grep "WM_CLASS(STRING)"'
alias printers="rdesktop 10.10.4.8 -u ${LDAP_USER} -p ${LDAP_PASSWORD}"
alias pkgsize="expac -S -H M '%k\t%n'"
alias pkgdelete_orphaned="sudo pacman -Rns $(pacman -Qtdq)"
alias pkglist_write="sudo pacman -Qqe > pkglist.txt"
alias pkginstall_from_pkglist="sudo pacman -S --needed - < pkglist.txt"
alias kernel_list="sudo mhwd-kernel -li"
alias kernel_del="sudo mhwd-kernel -r "
alias vpn_SQS="cd ~ && cd ~/work/vpn; sudo openvpn ${LDAP_USER}@${sqs_vpn}.ovpn"
alias vpn_tsb="cd ~ && cd ~/work/vpn; sudo openvpn ${LDAP_USER}@${jb_tsb_vpn}.ovpn"
alias vpn_lsb="cd ~ && cd ~/work/vpn; sudo openvpn ${LDAP_USER}@${jb_lsb_vpn}.ovpn"
alias home="cd ~ && .screenlayout/home.sh"
alias office="cd ~ && .screenlayout/office.sh"
alias laptop_home="cd ~ && .screenlayout/laptop_home.sh"
alias laptop_office="cd ~ && .screenlayout/laptop_office.sh"
alias time_update="sudo ntpdate fr.pool.ntp.org"
