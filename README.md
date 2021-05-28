# nvim-vojtech
This is my personal repo for storing and synchronizing my nvim configurations.
Some features you will find in it:
* Molokai Colors
* C/C++, Python, Rust, Bash, Git, Markdown, Bitbake focused plugins
* COC
* FZF
* Polyglot
...



## Usage:
* Search words between spaces and symbols.
    * Visual mode: `*` 

* Search selected text, not just words:
    1. Free select with ctrl+V+arrow
    2. `//`


## Install Plug.vim
Sometimes plug installation may fail and curl will be against us, then this worked for me:
`curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim > ~/.config/nvim/autoload/plug.vim`


## Instructions after :PlugInstall

### YouCompleteMe
* sudo apt-get install g++-8
* sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 700 --slave /usr/bin/g++ g++ /usr/bin/g++-7
* sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 800 --slave /usr/bin/g++ g++ /usr/bin/g++-8
* In  case of cmake issue:
    * apt remove cmake
    * pip install cmake --upgrade
* cd YouCompleteMe/third_party/ycmd
* git checkout master
* git pull
* git submodule update --init --recursive
* ./build.py --go-completer
* `~/.config/nvim/plugged/YouCompleteMe$ python3 install.py --go-completer`
* `~/.config/nvim/plugged/YouCompleteMe$ python3 install.py --all`
* "Failed to load python3 host"
    * pip3 install pynvim
* ...
* ...
Conclusions:
* YouCompleteMe makes nvim initialize slower
