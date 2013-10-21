Stanford Student Space Initiative
=================================

Website for Stanford Spaceflight Initiative. Copyright Omar Diab, Sept 17,
2013 under the MIT license.

# Installing on your machine

## Ubuntu

Once Rubinius 2 is on package managers and Heroku properly (next week or two),
you can use that; but until then, this is the deal:

1. Check the Gemfile for the correct version of Rubinius to use.
2. Go to the [Rubinius binary list](http://rubini.us/binaries/index.txt) and
   find the location of that version
3. Download the version and untar it.
4. Place it somewhere on your computer, add the `[rbx-path]/bin` and
   `[rbx-path]/gem/bin` to your `PATH`

## Mac, other Linux that can't run the Ubuntu binaries
Currently, Rubinius (the Ruby interpreter this project uses) doesn't have a
Heroku binary for `rbx-2.1.0`. At the same time, the Rubinius Heroku binaries,
while accessible, are not compiled for Mac OSX. Hence, this sucks.

Current standard procedure: Install `rbx-2.1.0` by going to [Rubinius's
website](rubini.us) and following the directions. There will be better ways
using package managers within the next few days/week, so this will change soon.

# Running the dev server

* Install all dependencies.
  * For Ubuntu with the Heroku `rbx` version, just run `bundle install`.
  * For Others without the Heroku `rbx` version, first copy `Gemfile.2.1.0` to
    `Gemfile`, and then run `bundle install`.

      NOTE: do NOT commit your changed version of `Gemfile` and `Gemfile.lock`.
      I know this sucks and is not ideal, but until Heroku has the new Rubinius
      release binary out, I can't do much else (besides not using Rubinius).
* To run the web server, just run `./run.sh`. Good deal.

# Happy developing!
