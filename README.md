# Personal Dotfiles for an X11 / BSPWM setup, managed with GNU Stow2

## Requirements
To quickly utlize this repo, use:

- stow
- git

## Installation 
`git clone` this repo
`cd $HOME`
`stow -d ~/dotfiles -t ~ bspwm ranger`

## Usage
Keybindings: sxhkdrc
Window Manger: BSPWM

## Structure
Each directory is in a stow package mirroring the home layout, so to link to the correct locations under
dotfiles:
    | bspwm #organizing directory (Stow package)
        | .config (immitating home location structure from here down)
            | bspwm
                | bspwmrc
## Package Notes

### BSPWM
- Beware of monitor that assigns workspaces

### SXHKD
- Beware of helper script mappings unless scripts are created or symlinked to the correct locations

### Neovim
- plugin manager: [Packer](https://github.com/wbthomason/packer.nvim)
    - Config file should automatically bootstrap the manager
- Beware of other plugins needing additional installtion steps
    - [Tree-Sitter](https://github.com/nvim-treesitter/nvim-treesitter)

### Dunst

### newsboat
Curently configured with no urls. If added, consider including in .gitignore

### Ranger
Should include installation of `w3m-img` package for image previewing

### wal
Previously used for coordinated themeing, but currently unused

### xres
Stores:
- .xinit
- .Xresources
    - Consider doing a symlink to colors

### colors
Current themeing method by maintaining a manually determined colorscheme. Includes:
- .Xresources
- colors.sh

### zsh
Needs to have oh-my-zsh installed along with it and a fuzzy finder system package (e.g. apt install fzf or xbps-install -S fzf)

## External Deps
For full bootstrap, reference: 
[Fresh-Installs](https://github.com/Shipwright0/Fresh-Installs)
## License
[LICENSE](LICENSE)
