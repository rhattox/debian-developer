#!/usr/bin/env bash

BASHRC="/home/${USER}/.bashrc"
TMUX_FILE="/home/${USER}/.bashrc_tmux"

# 1️⃣ Create ~/.bashrc_tmux if it doesn't exist
if [ ! -f "$TMUX_FILE" ]; then
    cat << 'EOF' > "$TMUX_FILE"
# ~/.bashrc_tmux
if command -v tmux &> /dev/null; then
  [ -z "$TMUX" ] && [ -n "$PS1" ] && exec tmux new-sessions -s default
fi
EOF
    echo "Created $TMUX_FILE"
else
    echo "$TMUX_FILE already exists"
fi

# 2️⃣ Add sourcing lines to ~/.bashrc if not already present
SOURCE_LINES="# Load tmux auto-start
if [ -f $TMUX_FILE ]; then
    source $TMUX_FILE
fi"

if ! grep -Fxq "# Load tmux auto-start" "$BASHRC"; then
    echo "" >> "$BASHRC"   # optional: newline for readability
    echo "$SOURCE_LINES" >> "$BASHRC"
    echo "Added tmux auto-start to $BASHRC"
else
    echo "tmux auto-start already present in $BASHRC"
fi

