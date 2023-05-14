# vivid-zsh

[vivid](https://github.com/sharkdp/vivid) `LS_COLORS` as zsh plugins.

installable anywhere that supports git repositories as plugins.

## how does this work?

- gets list of themes from vivid
- gets each theme from vivid
- puts them in their own zsh file with `export LS_COLORS=`
- done

## how do i build locally?

```sh
$ pnpm i
$ pnpm build
```

(vivid has to be installed)

## license

mit
