#!/bin/sh

echo "Verifying packer installation..."

if [[ ! -x /usr/bin/packer ]]; then
  echo "Installing packer..."
  sudo pacman -S packer curl --noconfirm
fi

echo "Verifying ansible installation..."

if [[ ! -x /usr/bin/ansible ]]; then
  echo "Installing ansible..."
  sudo pacman -S ansible --noconfirm
fi

echo "Verifying ansible plugin for packer..."

if [[ ! -x /usr/share/ansible/plugins/modules/packer ]]; then
  echo "Installing ansible-packer..."
  sudo curl -fLo /usr/share/ansible/plugins/modules/packer --create-dirs https://raw.githubusercontent.com/austinhyde/ansible-packer/master/packer
  sudo chmod -R 755 /usr/share/ansible/plugins
fi

echo "Running playbook..."
ansible-playbook -K ansible/main.yml