# dotfiles
Startup files package 📦

## HOWTO

### Initialization

Create bare Git repository:
```bash
git init --bare "$HOME"/dotfiles.git
```

### Maintenance

Define alias for `git`:
```bash
alias dot='/usr/bin/git --git-dir="$HOME"/dotfiles.git --work-tree="$HOME"'
```

> Note: Store this in your Shell's startup file (e.g. `.bashrc`).

This will gurrantee that `dot` AKA `git` will always find your _repository_ no matter what the current directory is
and will treat your home dir as _its_ working tree.

Hide untracked files:
```bash
dot config status.showUntrackedFiles no
```

Commit a file:
```bash
dot add ~/.bashrc && dot commit --message "Add .bashrc"
```

### Installation

Clone repository and restore files:
```bash
cd "$HOME"
dot clone --bare <repository>
dot checkout HEAD
```

## Credits

- [this](https://news.ycombinator.com/item?id=11070797) thread at Hacker News
