#!/usr/bin/env bash

ensure_source_line() {
    
    local LOADER="$1"
    local SOURCE="$2"

    grep -Fqx "$SOURCE" "$LOADER" 2>/dev/null \
    || printf '\n%s\n' "$SOURCE" >> "$LOADER"
}

error_helper() {
    
    local CONF="$1"
    
    echo "installing $CONF failed" >&2
    exit 1
}

ensure_source_line ~/.zshrc 'source ~/dotfiles/.zshrc' || error_helper .zshrc

ensure_source_line ~/.tmux.conf 'source-file ~/dotfiles/.tmux.conf' || error_helper .tmux.conf

echo "Please restart terminal"
