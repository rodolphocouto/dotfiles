#!/bin/sh

echo "Verifying ansible installation..."

if [[ ! -x /usr/bin/ansible ]]; then
  echo "Installing ansible..."
  sudo pacman -S ansible --noconfirm
fi

ansible --version

echo "Running playbook..."
ansible-playbook -K ansible/main.yml