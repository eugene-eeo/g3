{
  "title": "Manual"
}

# Manual

`g3` is a collection of programs that generate a static site. As such `g3` aims to make
it easy to compose them together to play well with your own workflow/project layout.
However all `g3` programs assume that the directory are executed from has a `_g3` folder
with the following layout:

    _g3/
        config.json
        skin.html
        static/

To get started easily and generate the required directories/files you can run:

    $ bin/g3-kickstart

In a directory and the `_g3` directory will be created if one doesn't exist.

 - `config.json` holds the configuration for the project in JSON format. For more
 information on the supported options see the page on [config files](/manual/config.html).
 - `skin.html` is a [mustache](https://mustache.github.io/) template that is used by
 some `g3` programs to generate HTML files. For more information on writing your
 own skins for `g3` see the page on [writing your own skins](/manual/skins.html).

It is important to be working in the right directory, which is the directory
which contains the `_g3` folder. For instance:

    $ cwd
    /.../blog
    $ ls
    README
    bin
    _g3
    ...

`/.../blog` is the directory that we want to work in. From this point on we will
assume that all commands _are ran in the right directory_.

`g3` is an almost 1-to-1 mapping of your files in the `_g3` directory to an
output directory with two exceptions: **the `_g3/dst` and `_g3/tmp` directories
are reserved for use by all `g3` programs**. They contain the generated website
and the intermediate build files, respectively.

For instance the directory on the left will generate the directory on the
right when `g3-build` is called. All `.md` files will be transformed into
`.html` files with the skin applied.

    _g3/                |  _g3/
        config.json     |      config.json
        skin.html       |      skin.html
        static/         |      ...
            icon.png    |      dst/
            style.css   |          static/
        index.md        |              icon.png
        topic/          |              style.css
            index.md    |          index.md
            page.md     |          topic/
                        |              index.md
                        |              page.md

One more caveat – each `.md` file must look like the following:

    {
        "title": "Some Title"
    }

    your _markdown_ content here.

JSON metadata must start from the first line of the file, separated by a
newline from the Markdown content. The metadata must contain at least the
`title` key.
