export PATH="/Users/natesalisbury/bin:$PATH"

### Add Homebrew to PATH
export PATH="/opt/homebrew/bin:$PATH"

### Mise
eval "$(/Users/natesalisbury/.local/bin/mise activate zsh)"

### PostgreSQL
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

### Git autocomplete
autoload -Uz compinit
compinit

# source other files if present
for file in ~/.{zsh_prompt,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
