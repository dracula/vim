### [Vim](http://www.vim.org/)

#### Install using Git

If you [use vim + pathogen](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/):

    cd ~/.vim
    git submodule add git@github.com:dracula/vim.git bundle/dracula

If you [use vim + vundle](https://github.com/gmarik/vundle):

    Plugin 'dracula/vim', { 'name': 'dracula' }
    :PluginInstall

If you [use vim-plug](https://github.com/junegunn/vim-plug) (\`as\` will install the plugin in a directory called 'dracula' instead of just 'vim'):

    Plug 'dracula/vim', { 'as': 'dracula' }
    :PlugInstall

Note that dracula must be in your `'runtimepath'` to load properly: Version 2.0 introduced autoload functionality for part of the plugin, which doesn't work without `'runtimepath'` properly set.

For users of Vim 8's `|packages|` feature, it suffices to put

    packadd! dracula

in your vimrc, alongside `syntax on` and `colorscheme dracula`. For users of other plugin managers, consult your documentation to make sure you put dracula on the `'runtimepath'` before loading it.
