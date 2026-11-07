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
Keybindings live in sxhkdrc
Window Manger is BSPWM

## Structure
Each directory is in a stow package mirroring the home layout, so to link to the correct locations under
dotfiles
    | bspwm #organizing directory (Stow package)
        | .config (immitating home location structure from here down)
            | bspwm
                | bspwmrc

## External Deps
For full bootstrap, reference other repos

## License
[LICENSE](LICENSE)
