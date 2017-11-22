{
  "title": "Manual"
}

`g3` is a collection of programs that generate a static site. As such `g3` aims to make
it easy to compose them together to play well with your own workflow/project layout.
However all `g3` programs assume that the directory are executed from has a `_g3` folder
with the following layout:

    _g3/
        config.json
        skin.html

To get started easily and generate the required directories/files you can run:

    $ g3-kickstart

In a directory and the `_g3` directory will be created if one doesn't exist.

 - `config.json` holds the configuration for the project in JSON format. For more
 information on the supported options see the page on [config files](/manual/config.html).
 - `skin.html` is a [mustache](https://mustache.github.io/) template that is used by
 some `g3` programs to generate HTML files. For more information on writing your
 own skins for `g3` see the page on [writing your own skins](/manual/skins.html).

## Important note

It is important to be working in the right directory. From this point on all
commands will be assumed to run in the correct directory:

    $ ls
    _g3/	...

When `g3` is running, it is advised **not** to touch the `_g3/tmp` or `_g3/dst`
directories since they hold the temporary build files and the compiled website,
respectively.

## Compiling

Run `g3-build` and you'll notice that `g3` is an almost 1-to-1 mapping of your
files in the directory to `_g3/dst`. All `.md` files will be transformed into `.html`
files with the skin applied. Non `.md` files will just be copied as-is to the
output directory.

    _g3/                |  ...
        config.json     |  _g3/
        skin.html       |      config.json
    static/             |      skin.html
        icon.png        |      dst/
        style.css       |          static/
    index.md            |              icon.png
    topic/              |              style.css
        index.md        |          index.html
        page.md         |          topic/
                        |              index.html
                        |              page.html

Each `.md` file must look like the following:

    {
        "title": "Some Title"
    }

    your _markdown_ content here.

JSON metadata must start from the first line of the file, separated by a
newline from the Markdown content. The metadata must contain at least the
`title` key.

## Viewing Results

You should host a http-server that points to `_g3/dst`. You can still
view the files as-is without a http-server, but the links generated
in the nav menu will not work correctly.
