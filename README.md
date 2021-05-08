# nvim-vojtech
This is my personal repo for storing and synchronizing my nvim configurations.
Some features you will find in it:
* Molokai Colors
* C/C++, Python, Rust, Bash, Git, Markdown, Bitbake focused plugins
* COC
* FZF
* Polyglot
...


I expect to improve the expalantions of how I use the plugins and the commands I use the most.

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
* ...
* ...
Conclusions:
* YouCompleteMe makes nvim initialize slower
