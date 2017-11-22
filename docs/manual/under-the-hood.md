{
  "title": "Under the Hood"
}

Under the hood, `g3` is simply a collection of programs to build a static
website, held together by some shell scripts (_get off my lawn_). When
looking and static site generation and writing `g3` I wanted to write
something unix-y so here is the amalgamation I came up with.

Given some file `<ref>`, the tools below will save their output to
`_g3/tmp/<ref>.<tool>`, where `<tool>` is determined by their name, e.g.
`g3-header` saves to `<ref>.header`.

 - `g3-header` – extracts the metadata section of `.md` files.
 - `g3-render` – renders the actual markdown (after the metadata chunk).
 - `g3-menu` – generates a hierarchical menu.

The following tools are mainly for collecting and building:

 - `g3-html` – combines the `.header`, `.menu`, and `.render` files and
   renders the template. Writes to `_g3/dst/<ref>.html` if `<ref>`
   is a markdown file, else just copies it to `_g3/dst/<ref>`.
 - `g3-copy` – just copies the file to `_g3/dst`.
 - `g3-walk` – recursively lists files in the directory, respecting the
   options in `config.json`.
 - `g3-build` – a shell script that combines the tools and builds the
   whole thing.

Misc. tools:

 - `g3-kickstart` – sets up a new `_g3` project in the current directory.
