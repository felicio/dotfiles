# dotfiles
Startup files put in box 📦.

## Usage

### Initialization

Create bare Git repository:

```bash
git init --bare $HOME/dotfiles.git
```

### Maintenance

**Define alias for `git`:**

> Note: Store this in your Shell's startup file (e.g. `.bashrc`).

```bash
alias dot="/usr/bin/git --git-dir=$HOME/dotfiles.git --work-tree=$HOME"
```

This will gurrantee that `dot` AKA `git` will always find your _repository_ no matter what the current directory is
and will treat your home dir as its working tree.

**Hide untracked files:**

```bash
dot config status.showUntrackedFiles no
```

**Commit file:**
```bash
dot add .bashrc && dot commit -m "Add .bashrc"
```

## Credits

- [this](https://news.ycombinator.com/item?id=11070797) thread at HN
