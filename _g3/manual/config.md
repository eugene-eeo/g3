{
  "title": "Configuration Files"
}

# Configuration Files

Configuration files are the `_g3/config.json` files, which must contain valid
JSON. An example config is the following:

    {
      "ignore": ["skin.html", "config.json"],
      "extras": ["footnotes", "tables"]
    }

Options available:

 - `ignore` – an array of glob pattern of files to exclude. For instance,
   writing `*.txt` will ignore all `.txt` files in the "root" directory.
   <b>Note:</b> this option does not apply to files in the `_g3/static` folder.

 - `extras` – an array of extras to use when rendering markdown.
   A full Wiki and a description of what each of these extras do can be
   found [here](https://github.com/trentm/python-markdown2/wiki/Extras).
