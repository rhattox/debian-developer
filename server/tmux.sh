#!/usr/bin/env bash

BASHRC="/home/${USER}/.bashrc"
TMUX_FILE="/home/${USER}/.bashrc_tmux"

# 1️⃣ Create ~/.bashrc_tmux if it doesn't exist
if [ ! -f "$TMUX_FILE" ]; then
    cat << 'EOF' > "$TMUX_FILE"
#!/usr/bin/env bash
if command -v tmux &> /dev/null; then
    # Only attach if we're in an interactive shell and not already inside tmux
    if [ -z "$TMUX" ] && [ -n "$PS1" ]; then
        # Check if 'default' session exists
        if tmux has-session -t default 2>/dev/null; then
            tmux attach-session -t default
        else
            tmux new-session -s default
        fi
    fi
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

