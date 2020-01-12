#!/bin/sh

echo "Verifying ansible installation..."

if [[ ! -x /usr/bin/ansible ]]; then
  echo "Installing ansible..."
  sudo pacman -S ansible --noconfirm
fi

echo "Verifying ansible plugin for yay..."

if [[ ! -x /usr/share/ansible/plugins/modules/yay ]]; then
  echo "Installing ansible-yay..."
  sudo curl -fLo /usr/share/ansible/plugins/modules/yay --create-dirs https://raw.githubusercontent.com/mnussbaum/ansible-yay/master/yay
  sudo chmod -R 755 /usr/share/ansible/plugins
fi

echo "Running playbook..."
ansible-playbook -K ansible/main.yml
