# Daniel's Dotiles
This is the collection of my dotfiles.

I collected this configurations over the last decade.

## Management
I use [chezmoi](https://www.chezmoi.io/) to manage my dotfiles.

A few useful **chezmoi** commands:

**clone and apply the dotfiles good for new machines**
```bash
chezmoi init --apply git@github.com:dgo-/dotfiles.git
```

*updates local dotfiles*
```bash
chezmoi update
```
*(git pull --rebase && chezmoi apply.)*
