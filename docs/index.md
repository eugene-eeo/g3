{
  "title": "Home"
}

Welcome to the homepage of `g3`, the simple static site generator. _The 3 represents
the 3 words that start with 's' in "simple static ..."._ `g3` can be seen as a
collection of scripts that can be composed together to generate a static website.
It is inspired by the excellent [ussm](http://loup-vaillant.fr/projects/ussm/).
I know that [Jekyll](https://jekyllrb.com/) and [Pelican](https://blog.getpelican.com/)
exist, but I just like building my own.

Currently the workflow is:

    $ source alias.sh
    $ vim # or emacs
    $ g3-build
    $ http-server _g3/dst -p 8800 -a localhost -s

## Features

 - Easily skinnable
 - Write your posts in Markdown
 - Customisable without knowledge of Python
 - _Very_ opinionated, may not work for you

## Todo

 - Write some tests
 - Complete this manual
 - More robust error handling
 - Better error messages
