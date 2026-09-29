#!/usr/bin/env bash

grep -Fqx 'source ~/.dotfiles/.zshrc' ~/.zshrc 2>/dev/null \
|| printf '\nsource ~/.dotfiles/.zshrc\n' >> ~/.zshrc

echo "Open a new terminal or run 'source ~/.zshrc'"