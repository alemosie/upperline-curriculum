# Build an About Me HTML Page

Build your own single-page "About Me" website using HTML.

## Content

Make sure to include at least two of the following:

1. A paragraph or two about yourself.
2. A list of interests: what do you like to do in your spare time?
3. A section about your favorite place in New York City.
4. Your favorite meme(s).

## New concept: inline CSS

CSS (which stands for "cascading style sheets") describes how HTML elements are displayed. If HTML is the bones/body of your webpage, think of CSS like the clothes you put on -- elements that give your page that extra oomph in style. With CSS, you can 

While CSS normally resides in its own document, we can also use it within HTML tags by passing the tag the "style=" argument. Consider this blue heading below:

```html
<h1 style="color:blue;">This is a blue heading.</h1>
```

`color:blue;` is CSS for "change the H1 text to the color blue." 

We can also change the text font like so:

```html
<h1 style="font-family:courier;">This heading is in Courier.</h1>
```

Or we can put them together!

```html
<h1 style="font-family:courier;color:blue">This heading is in Courier and it's blue!</h1>
```

CSS pairs ("color" being the property and "blue" being the value of the property "color") are separated by a semi-colon. You can add as many as you like, as long as they follow the proper syntax!


## HTML tags

Your page must contain the following html tags and attributes:

* Header (e.g. `<h3>`)
* Text alignment (center, right, left)
* Image (`<img>`)
* Text formatting (`<b>, <i>, <u>`)
* Division (`<div>`)
* Ordered list (`<ol>`)
* Unordered list (`<ul>`)
* External link (`<a href...>`)
* Internal link (`<a href=#...>`)

For an extra challenge, consider researching and using the following tags:

* Horizontal rule (`<hr>`)
* Quote (`<blockquote>`)

