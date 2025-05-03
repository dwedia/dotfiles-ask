# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
for dir in "$HOME/.local/bin" "$HOME/.local/scripts" "$HOME/bin"; do
  case ":$PATH:" in
    *":$dir:"*) ;;
    *) PATH="$dir:$PATH" ;;
  esac
done
export PATH

if [ -f $HOME/.bash_aliases ] ; then
  . ~/.bash_aliases
fi

for dir in "$HOME/.local/bin" "$HOME/.local/scripts" "$HOME/bin"; do
  case ":$PATH:" in
    *":$dir:"*) ;;
    *) PATH="$dir:$PATH" ;;
  esac
done
export PATH

if [ -f $HOME/.bash_aliases ] ; then
  . ~/.bash_aliases
fi

# Set vagrant provider libvirt
export VAGRANT_DEFAULT_PROVIDER=libvirt
