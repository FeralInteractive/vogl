Setup
=====
Mac builds require Homebrew. If you don't have Homebrew installed then you can install it with:

	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

If you do have Homebrew installed then you should first update it with:

	brew doctor
	brew update
	brew upgrade

Homebrew builds using your currently selected Xcode command line tools. If you have multiple versions of Xcode
installed then make sure they don't have spaces in their name (call them Xcode\_5.1.1.app, Xcode\_6.1.app, etc).



Scripts
=======
This directory contains some temporary Feral setup for Mac builds.

* setup.sh, install required packages from HomeBrew.
* build.sh, perform a build.
* clean.sh, remove any build products.
* test.sh,  invoke the test app.

All scripts assume they're being run from this directory (vogl/feral).

