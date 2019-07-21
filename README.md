# dotfiles
Startup files repository 🗄

## Creating repository

```bash
git init --bare "$HOME/dotfiles.git"
```

Define alias for `git` command:
```bash
alias dot='git --git-dir="$HOME/dotfiles.git" --work-tree="$HOME"'
```

This will gurrantee that `dot`, or `git`, will always find your _repository_ no matter what the current directory is
and will treat your home directory as _its_ working tree.

Hide untracked files:
```bash
dot config status.showUntrackedFiles "no"
```

Commit a file:
```bash
dot add "$HOME/.bashrc"
```
```bash
dot commit --message "Add .bashrc"
```

## Usage

```bash
git clone --bare "https://github.com/<username>/dotfiles.git" "$HOME/dotfiles.git"
```

```bash
alias dot='git --git-dir="$HOME/dotfiles.git" --work-tree="$HOME"'
```

```bash
dot config status.showUntrackedFiles "no"
```

```bash
dot config remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*"
```

Create index:
```bash
dot reset
```

Show working tree status:
```bash
dot status
```

Then either start tracking changes in a new branch:
```bash
dot checkout -b "<my-company>"
```

Or checkout all files from the repository:
```bash
dot checkout .
```
