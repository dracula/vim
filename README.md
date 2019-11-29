# Dracula for [Vim](http://www.vim.org/)

> A dark theme for [Vim](http://www.vim.org/).

![Screenshot](https://draculatheme.com/assets/img/screenshots/vim.png)

## Install

All instructions can be found at
[draculatheme.com/vim](https://draculatheme.com/vim).

Note that dracula must be in your `'runtimepath'` to load properly: Version 2.0
introduced autoload functionality for part of the plugin, which doesn't work
without `'runtimepath'` properly set.

For users of Vim 8's `|packages|` feature, it suffices to put

    packadd! {name}
    colorscheme dracula

in your vimrc. `{name}` Should be replaced by the directory you put the code in.
For example, if you use `~/.vim/pack/themes/start/my-dracula-theme`, you would do
`packadd! my-dracula-theme`.

For users of other plugin managers, consult your documentation
to make sure you put dracula on the `'runtimepath'` before loading it.

### If you use a plugin manager

**For example**

For [dein.vim](https://github.com/Shougo/dein.vim)

`call dein#add('dracula/vim')`

For [vim-plug](https://github.com/junegunn/vim-plug)

`Plug 'dracula/vim'`

## Team

This theme is maintained by the following person(s) and a bunch of
[awesome contributors](https://github.com/dracula/vim/graphs/contributors).

| [![Derek S.](https://avatars3.githubusercontent.com/u/5240018?v=3&s=70)](https://github.com/dsifford) | [![David Knoble](https://avatars0.githubusercontent.com/u/22802209?v=4&s=70)](https://github.com/benknoble) |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| [Derek S.](https://github.com/dsifford)                                                               | [David Knoble](https://github.com/benknoble)                                                                |

## License

[MIT License](./LICENSE)
