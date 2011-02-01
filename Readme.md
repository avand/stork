Stork
=====

Nice and tidy bundles of CSS and JS served by Rack.

Inspired by [Managing Styles with Sass on Heroku][blog].

Inspiration
===========

* Sass - especially the Scss part - is pretty cool and I want to use it in my web apps.
* Some file systems (aka [Heroku][heroku-readonly]) are read-only so you can't "compile" to disc without dirty hacks.
* [HTTP caching][heroku-caching] is pretty cool and we can leverage it to serve assets lickity-split.
* We also want:
  * Stylesheets organized in lots of tiny files but that serve as one,
  * JavaScript bundles organized expressively with YAML,
  * JavaScript and CSS compression.

Installation
============

Stork is designed to be two simple Rack endpoints that will bundle, compress, and serve your stylesheets and javascripts.

If you're using Rails 3, using Stork might look something like this:

    match "/stylesheets/:package.css" => Stork::StylesheetBundler
    match "/javascripts/:package.js"  => Stork::JavascriptBundler

Don't Bust that Nut Just Yet
============================

Stork is a **work in progress** so I wouldn't go trying to install it just yet.

There's still a lot to do:

* Test it with Rails and maybe some other Rack based apps.
* Make sure it plays nicely with [Compass][compass].
* Build in Javascript support (including compression).
* Finally, make it available as a proper gem.

[blog]: http://avandamiri.com/2010/09/15/managing-styles-with-sass-on-heroku.html
[compass]: http://compass-style.org/
[heroku-readonly]: http://docs.heroku.com/constraints#read-only-filesystem
[heroku-caching]: http://docs.heroku.com/http-caching