# dotfiles

dmp's dotfiles

## Setup
Instalation task:
```
rake install
```

To use gitignore for all trees use:
```
git config --global core.excludesfile ~/.gitignore
```

---

## Editors

### Vim

Follow instructions from: [.vimrc](vimrc#L10-L11) to get all packages installed.

### Spacemacs

I'm using Emacs distribution called Spacemacs which combines Vim and Emacs - http://spacemacs.org/
> The best editor is neither Emacs nor Vim, it's Emacs and Vim!"

It just uses one config file: [.spacemacs](spacemacs)

My personalized settings can be found in `dotspacemacs/user-config` definition and at the end of the file in `custom-set-variables` section.

On Mac I'm using this Emacs package: https://emacsformacosx.com/
