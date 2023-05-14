# vivid-zsh

[vivid](https://github.com/sharkdp/vivid) `LS_COLORS` as zsh plugins.

installable anywhere that supports git repositories as plugins.

## how do i install this?

it depends on what you are using for managing your zsh plugins.

### antidote

1. add `ryanccn/vivid-zsh` to your `.zsh_plugins.txt`
2. set
   ```sh
   vivid_theme="<name of theme>"
   ```
   before `antidote load`

### oh my zsh

1. clone the repo into the oh my zsh directory
   ```sh
   $ git clone https://github.com/ryanccn/vivid-zsh ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/vivid-zsh
   ```
2. add the plugin to your `~/.zshrc`
   ```sh
   plugins=(
      # other plugins...
      vivid-zsh
   )
   ```
3. configure `vivid_theme="<name of theme>" before oh my zsh is initialized

### manual (no plugin manager)

1. clone the repo
   ```bash
   $ mkdir -p ~/.zsh
   $ git clone https://github.com/ryanccn/vivid-zsh.git ~/.zsh/vivid-zsh
   ```
2. add this to your `.zshrc`
   ```sh
   vivid_theme="<name of theme>"
   source ~/.zsh/vivid-zsh/vivid-zsh.zsh
   ```
3. restart your shell

## how does this work?

- gets list of themes from vivid
- gets each theme from vivid
- puts them in their own zsh file with `export LS_COLORS=`
- sources one of them depending on what you set

## how do i build themes locally?

1. install [vivid](https://github.com/sharkdp/vivid)
2. run `./build.sh`

## license

mit
