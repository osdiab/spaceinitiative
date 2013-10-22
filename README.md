Stanford Student Space Initiative
=================================

Website for Stanford Spaceflight Initiative. Copyright Omar Diab, Sept 17,
2013 under the MIT license.

# Installing Rubinius on your machine

## Mac and Unix distros

Choose your favorite way of installing Rubinius 2.1.1. That could be using a
Ruby version manager like [rvm](http://rvm.io/), using
[homebrew](http://brew.sh/) to install `rbenv` and `ruby-build`, or going to
[Rubinius's website](http://rubini.us/) and installing from source using their
instructions.

### `rvm` instructions
1. Download `rvm` with dotfiles patching by running this command:

   ```
   \curl -L https://get.rvm.io | bash -s stable --auto-dotfiles
   ```
2. Install `rubinius-2.1.1` using this command:

   ```
   rvm install rubinius-2.1.1
   ```
   This will take a while.
3. Set it as your default ruby as so:
   
   ```
   rvm use --default rubinius-2.1.1
   ```

## Windows

Sorry, Rubinius does not provide support for Windows yet. So your best bet is
to download [VirtualBox](https://www.virtualbox.org/) and
[Ubuntu](http://www.ubuntu.com/) (or your favorite distro) and run a virtual
machine running Linux. Or install a Linux partition. Or ditch Windows and just
run Linux. Or buy a Mac.

# Running the dev server

1. Run `bundle install` to install dependencies.
2. Run `./run.sh`, and point your  browser to `localhost:5000`. Good deal.

# Happy developing!
