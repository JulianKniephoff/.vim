This is my {g,Mac}Vim? configuration.
Nothing special this far.

Installation Instructions
=========================

Unix
----

Clone this directory into `~/.vim` then do a quick

	cd ~/.vim
	git submodule init
	git submodule update

and finally make sure you're actually using my `.vimrc` by either including it in an appropriate spot of
your own configuration via

	source ~/.vim/vimrc

or just do

	ln -s .vim/vimrc ~/.vimrc

You now have to build the Command-T plugin native extension: First
make sure you are building it with the ruby version that your vim
was linked against. You can see this version e.g. via

	vim "+ruby puts RUBY_VERSION"

After that, simply run

	cd bundle/command-t
	rake make

Windows
-------

TODO
