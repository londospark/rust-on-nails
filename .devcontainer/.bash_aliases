# Git aliases.
alias gst='git status'
alias gcm='git checkout main'
alias c=clear
alias gp='git push'
alias gcam='git commit -a -m'
alias gpsup="git push --set-upstream origin $(git symbolic-ref -q HEAD | sed -e 's|^refs/heads/||')"
alias gcb='git checkout -b'
alias gcr='f() { git checkout -b $1 origin/$1; }; f'

# Cargo watch
alias cw='mold -run cargo watch --no-gitignore -i "*.scss" -i "*.ts" -i node_modules -x run'
alias zs='zola serve --interface 0.0.0.0'

# npm
alias nrs='npm run start'

# Database
alias dbmate='dbmate --no-dump-schema --migrations-dir /workspace/crates/db/migrations'
alias db='psql $DATABASE_URL'

# Spellcheck
alias spell='docker run --rm -ti -v $HOST_PROJECT_PATH/rust-on-nails.com/content:/workdir tmaier/markdown-spellcheck:latest "**/*.md"'
