Stanford Student Space Initiative
=================================

Website for Stanford Student Space Initiative. Copyright Stanford Student Space
Initiative, Sept 17, 2013 under the MIT license.

# Setup

## Installing Rubinius on your machine

### Mac and Unix distros

Choose your favorite way of installing Ruby 1.9.3. That could be using a
Ruby version manager like [rvm](http://rvm.io/), or on Mac, using
[homebrew](http://brew.sh/) to install `rbenv` and `ruby-build`, or just go to
[Ruby's website](https://www.ruby-lang.org/en/downloads/) and install from
source using their instructions.

#### `rvm` instructions
1. Download `rvm` with dotfiles patching by running this command:

   ```
   \curl -L https://get.rvm.io | bash -s stable --auto-dotfiles
   ```
2. Install `rbx-2.2.1` using `rvm install rbx-2.2.1`. This may take a
   while.
3. Set it as your default ruby as so:

   ```
   rvm use --default rbx-2.2.1
   ```

### Windows

Rbx doesn't have Windows support yet. Sorry!

# Running the dev server

It's simple! Just...

1. Run `bundle install` to install dependencies, as described above if not
   using JRuby.
2. Run `./run.sh`, and point your  browser to `localhost:5000`. Good deal.

# Coding standards

This project uses tools to automatically check basic code quality. They are as
follows:

Ruby: `rubocop`
Javascript: `jshint` and `gjslint`

These tools will help standardize the code base at least a little. To install,
run the `install-linters` and `install-precommit` scripts in the `dev-scripts`
folder. They support Mac and Debian (Ubuntu, Linux Mint...) operating systems.

# Access to Tumblr credentials

If you need to work with the Tumblr news feed, let me know and I'll give you
the credentials to add to your environment.

# The stack

This site runs on Rubinius on the Puma webserver.

I chose Rubinius because it provides true multithreading and good performance,
which means that it can in theory serve pages more efficiently than MRI (the
reference Ruby interpreter) can using a multithreaded web server like Puma.
Whether or not it makes an appreciable difference in a project like this is yet
to be seen, but I thought it would be interesting to see how a different Ruby
implementation would perform :)

# Happy developing!
