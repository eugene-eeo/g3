{
  "title": "Home"
}

# Home

Welcome to the homepage of `g3`, the simple static site generator. _The 3 represents
the 3 words that start with 's' in "simple static ..."._ `g3` can be seen as a
collection of scripts that can be composed together to generate a static website.
It is inspired by the excellent [ussm](http://loup-vaillant.fr/projects/ussm/).
Before you say it, I know that [Jekyll](https://jekyllrb.com/) and [Pelican](https://blog.getpelican.com/)
exist. I just like building my own.

Currently the workflow is:

    $ vim # or emacs
    $ bin/g3-build
    $ cd _g3/dst
    $ python -m http.server 8800

## Features

 - Easily skinnable
 - Write your posts in Markdown
 - Customisable without knowledge of Python
 - _Very_ opinionated, may not work for you

## Todo

 - Write some tests
 - Speed this thing up! (Maybe rewrite some parts in Go)
 - Complete this manual
