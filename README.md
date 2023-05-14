# vivid-zsh

[vivid](https://github.com/sharkdp/vivid) `LS_COLORS` as zsh plugins.

installable anywhere that supports git repositories as plugins.

## how do i install this?

it depends on what you are using for managing your zsh plugins.

## why do i need this?

simply put, this is faster than calling an external CLI.

benchmark results via [hyperfine](https://github.com/sharkdp/hyperfine)

| Command  | Mean [ms] | Min [ms] | Max [ms] |      Relative |
| :------- | --------: | -------: | -------: | ------------: |
| `plugin` | 0.2 ± 0.4 |      0.0 |      3.1 |          1.00 |
| `cli`    | 3.8 ± 2.4 |      1.9 |     27.3 | 16.36 ± 27.48 |

```bash
$ hyperfine --shell "zsh" --warmup=5 'vivid_theme=nord source vivid-zsh.plugin.zsh' -n plugin 'export LS_COLORS="$(vivid generate nord)"' -n cli
```

### antidote

1. add `ryanccn/vivid-zsh` to your `.zsh_plugins.txt`
2. set
   ```bash
   vivid_theme="<name of theme>"
   ```
   before `antidote load`

### antigen

1. `antigen bundle ryanccn/vivid-zsh`
2. set
   ```bash
   vivid_theme="<name of theme>"
   ```
   in your `~/.zshrc` before antigen loads

### oh my zsh

1. clone the repo into the oh my zsh directory
   ```bash
   $ git clone https://github.com/ryanccn/vivid-zsh ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/vivid-zsh
   ```
2. add the plugin to your `~/.zshrc`
   ```bash
   plugins=(
      # other plugins...
      vivid-zsh
   )
   ```
3. configure `vivid_theme="<name of theme>"` before oh my zsh is initialized

### manual (no plugin manager)

1. clone the repo
   ```bash
   $ mkdir -p ~/.zsh
   $ git clone https://github.com/ryanccn/vivid-zsh.git ~/.zsh/vivid-zsh
   ```
2. add this to your `.zshrc`
   ```bash
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
