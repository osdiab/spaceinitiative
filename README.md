Stanford Student Space Initiative
=================================

Website for Stanford Student Space Initiative. Copyright Stanford Student Space
Initiative, Sept 17, 2013 under the MIT license.

Unfortunately, Windows is not currently supported. Additionally, if you'd like
to contribute, you probably need a decent command of using your Terminal, git,
Ruby, and Javascript. If you're feeling it, then come onboard!

# Setup

## Installing Ruby on your machine

### Install `rvm`
1. Download `rvm` with dotfiles patching by running this command:

   ```
   \curl -L https://get.rvm.io | bash -s stable --auto-dotfiles
   ```
2. Run `rvm install ruby-2.1.1`. This may take a while.
3. Set it as your default ruby as so:

   ```
   rvm use --default ruby-2.1.1
   ```

   Alternatively, don't do this, and every time you enter the folder `rvm` should
   recognize the correct version of Ruby from the Gemfile and switch to it.

#### Troubleshooting RVM

You may get a notice that you're not using a login shell, and therefore RVM
needs to be run as a function. To fix it, try adding this to ~/.bashrc (or
whatever you use, if you use a different shell):

```
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
```

That runs RVM as a function. Restart your shell and hopefully it should work.
If not, let me know and we'll see what to do.

# Running the dev server

It's simple! Just...

1. Run `bundle install` to install dependencies, as described above if not
   using JRuby.
2. Run `./run.sh`, and point your  browser to `localhost:5000`. Good deal.

# Coding standards

This project uses tools to automatically check basic code quality. They are as
follows:

Ruby: `rubocop`
Javascript: `jshint`

These tools will help standardize the code base at least a little. To install,
run the `install-linters` and `install-precommit` scripts in the `dev-scripts`
folder. They support Mac and Debian (Ubuntu, Linux Mint...) operating systems.

# Access to Tumblr credentials

If you need to work with the Tumblr news feed, let me know and I'll give you
the credentials to add to your environment.

# The stack

This site runs on Ruby on the Puma webserver. Puma is multithreaded, which is
nice for performance, but otherwise it's transparent throughout the development
process. Should be pretty easy to use :)

# Happy developing!
