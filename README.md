Stanford Student Space Initiative
=================================

Website for Stanford Student Space Initiative. Copyright Stanford Student Space
Initiative, Sept 17, 2013 under the MIT license.

# Running the dev server

Once you've installed JRuby, running the webserver is simple.

1. Run `bundle install` to install dependencies.
2. Run `./run.sh`, and point your  browser to `localhost:5000`. Good deal.

# The stack

This site runs on JRuby on the Puma webserver. Therefore, you'll need to
install JRuby.

JRuby is an implementation of Ruby on the JVM. I chose JRuby because it
provides true multithreading, which means that it can in theory serve pages
more efficiently than MRI (the reference Ruby interpreter) can using a
multithreaded web server like Puma.

I ultimately chose not to use Rubinius for now, although Puma was made for it,
because of its current instability in development. Once things even out a bit
more, it may be considered in place of JRuby.

# Installing JRuby on your machine

## Mac and Unix distros

Choose your favorite way of installing Rubinius 2.1.1. That could be using a
Ruby version manager like [rvm](http://rvm.io/), or on Mac, using
[homebrew](http://brew.sh/) to install `rbenv` and `ruby-build`, or just go to
[JRuby's website](http://jruby.org/) and install from source using their
instructions.

### `rvm` instructions
1. Download `rvm` with dotfiles patching by running this command:

   ```
   \curl -L https://get.rvm.io | bash -s stable --auto-dotfiles
   ```
2. Install `jruby-1.7.5` using this command:

   ```
   rvm install jruby-1.7.5
   ```
   This will take a while.
3. Set it as your default ruby as so:

   ```
   rvm use --default jruby-1.7.5
   ```

## Windows

Follow the instructions at [JRuby's website](http://jruby.org/). I'm unaware of
how Windows works exactly but you should be able to do it.

# Happy developing!
