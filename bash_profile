# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Ruby
export PATH=~/.rbenv/bin:$PATH
eval "$(rbenv init -)"

# Homebrew
export PATH=~/.homebrew/bin:~/.homebrew/sbin:~/.homebrew/include:$PATH
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

export MANPATH=/usr/local/git/man:/opt/local/man:$MANPATH

# Aliases
alias ll='ls -lG'
alias la='ls -laG'
alias be='bundle exec'
alias weather='function _weather(){ curl http://wttr.in/${1:-84043}; };_weather'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### AWS CLI Command Completion
complete -C '/usr/local/bin/aws_completer' aws

### pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
