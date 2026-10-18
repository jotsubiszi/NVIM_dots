# NVIM_dots
My neo vim dot files bcs why not.
I'm writing it mostly for myself cause i have memory of a gold fish...

## Setup
Followind this guide should at least help You with setting up this dotfiles.
On my mashine im running:
- Arch Linux
- XFCE 
- Kitty terminal emulator
> Notice:
> This guide is for myself, some of commands might not be present in Your enviroment, things may not work for You or everything might just straight up not work. 
>
>(I to jest jakby okej)

### Nerd Fonts
Dont forget to get Nerd Fonts of Your choise.
You can do it either using AUR or any other way.
I'am running kitty terminal emulator, so I'll show the way I did it.

If You want all of them fonts then just run this command:
```shell
    paru -S nerd-fonts
```
However if You have a specific font in mind it may be chellanging to find it among 69 other fonts, so run this:
```shell
    paru -S ttf-hack-nerd
```
After that just use below command and select font of your choosing.
```shell
    kitten choose-fonts
```
> WARNING:
> Doing so will change your entire system font! 
> Please be wary of that.

Congrats Your font is up and running.

## TODO in README:
- [x] ~~finish fonts chapter~~
- [x] explain ```shell git clone git@github.com:jotsubiszi/NVIM_dots.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim ```
- [x] sudo pacman -S tree-sitter-cli gcc lazygit (.mdPreview: nodejs  npm)
- [x] explain .mdPreview setup ```shell cd ~/.local/share/nvim/lazy/markdown-preview.nvim/app npm install```

## TODO in dots:
- [x] ~~checkout if LATEX just works with MarkdownPreview plugin~~ Nope, just KATEX for math equations
- [x] add harpoon plugin
- [x] put all keymaps into keymaps.lua or at least check if possible
- [x] fix git nerd font icons 
- [x] finish README


