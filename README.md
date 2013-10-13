Stanford Spaceflight Initiative
===============================

Website for Stanford Spaceflight Initiative. Copyright Omar Diab, Sept 17,
2013 under the MIT license.

# Installing on your machine

## Ubuntu

1. Check the Gemfile for the correct version of Rubinius to use.
2. Go to the [Rubinius binary list](http://rubini.us/binaries/index.txt) and
   find the location of that version
3. Download the version and untar it.
4. Place it somewhere on your computer, add the `[rbx-path]/bin` and
   `[rbx-path]/gem/bin` to your `PATH`

## Mac, other Linux that can't run the Ubuntu binaries
Currently, Rubinius (the Ruby interpreter this project uses) doesn't have a
Heroku binary for `rbx-2.0.0`. At the same time, the Rubinius Heroku binaries,
while accessible, are not compiled for Mac OSX. Hence, this sucks.

Current standard procedure: Install `rbx-2.0.0`. You could do this in several
ways:

* Use [rvm](http://rvm.io) To install `rbx-2.0.0`
* Use rbenv To install `rbx-2.0.0`. To do so,
  1. Install [Homebrew](http://brew.sh/), the Mac package manager
  2. Run `brew install rbenv ruby-build`
  3. Figure out how rbenv works.
* [Build Rubinius from source](https://github.com/rubinius/rubinius)

# Running the dev server

* Install all dependencies.
  * For Ubuntu with the Heroku `rbx` version, just run `bundle install`.
  * For Others without the Heroku `rbx` version, first copy `Gemfile.2-0-0` to
    `Gemfile`, and then run `bundle install`.

      NOTE: do NOT commit your changed version of `Gemfile` and `Gemfile.lock`.
      I know this sucks and is not ideal, but until Heroku has the `rbx-2.0.0`
      release binary out, I can't do much else.
* To precompile all the CSS, either run `compass compile` before running code,
or start `compass watch` to actively check for updates to the CSS as you
develop. `compass watch &` will run it in the background.
* To run the web server, just run `./run.sh`. Good deal.

# Happy developing!
