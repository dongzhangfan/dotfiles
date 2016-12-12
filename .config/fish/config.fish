# iterm integration
test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish

# pyenv shims and autocomplete
if which -s pyenv
  status --is-interactive; and source (pyenv init -|psub)
end

# dotfiles config
alias dotfiles-config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
