{
  "title": "Writing skins"
}

A skin is simply the `_g3/skin.html` file. It must be a valid [mustache](https://mustache.github.io)
template. An example skin:

    <html>
    <head>
      <meta charset='utf8'/>
      <title>My Blog – {{ title }}</title>
    </head>
    <body>
      <nav>{{{ menu }}}</nav>
      <article>{{{ content }}}</article>
    </body>
    </html>

Recall that every `.md` file in the `_g3` directory has a metadata header associated
with it. The keys in those metadata headers are also available for use within the
template. However, the `menu` and `content` variables will take precedence over the
metadata. They contain a list of links and the rendered markdown, respectively.

Example: you want to have a special `author` field for each of your articles.
You could write:

    <html>
    <head>
      <meta charset='utf8'/>
      <title>My Blog – {{ title }}</title>
    </head>
    <body>
      <nav>{{{ menu }}}</nav>
      <article>{{{ content }}}</article>
      <hr/>
      Author: {{ author }}
    </body>
    </html>

And in your `.md` files you should have:


    {
      "title": "On the issues of keming",
      "author": "Writer McWriteFace"
    }

    # On The Issues of Keming

    Blah Blah Blah

Which would produce the following when rendered:

    <html>
    <head>
      <meta charset='utf8'/>
      <title>My Blog – On the issues of keming</title>
    </head>
    <body>
      <nav>...</nav>
      <article>
      <h1>On The Issues of Keming</h1>

      <p>
      Blah Blah Blah
      </article>
      <hr/>
      Author: Writer McWriteFace
    </body>
    </html>

[Here](https://mustache.github.io/mustache.5.html) is a very useful manual
for mustache templates.
