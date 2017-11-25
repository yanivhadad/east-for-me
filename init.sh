alias ls='ls --color'
alias ll='ls -la'
alias update-all='apt-get update ; apt-get upgrade -y ; apt-get dist-upgrade -y'

easy_for_me_base_script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function easy-for-me-init() {
    update-all
    apt-get install -y curl firmware-realtek vim git
    chmod +x ${easy_for_me_base_script_dir}/install-raspi-config.sh
    ${easy_for_me_base_script_dir}/install-raspi-config.sh
    raspi-config --expand-rootfs

    reboot
}