# Make a Rainbow!

In this lesson, we're going to practice assigning ids to HTML elements and applying newfound knowledge of CSS selectors!

## CSS selectors

Cascading Style Sheets, or CSS, is a language created to style an HTML document by telling the browser how specific elements should look. CSS does this by **selecting** elements based on their tag, ids, classes, or all of the above.

CSS selectors have the job of matching CSS styling to a particular element on your HTML page.

Say you have the following html:

```html
<h1>WARNING!</h1>
```

You want to make the biggest header (`h1`) bright red using CSS. Here's the corresponding CSS:

```css
h1 {
  color: red;
}
```

We're *selecting* the `h1` HTML element, and applying styling to it.

Here are some ways to select HTML elements in your CSS:

```css

div {
  /* select every div element */
}

#some-id {
  /* select every element with that id */
}

.some-class {
  /* select every element with that class */
}

div p {
  /* select every p element within a div */
  /* div is the "parent" element,
     while p is the "child" element */
}

p, span {
  /* select every p and span tag */
}

```


## Color the rainbow!

To get roygbiv onto our rainbow we'll need seven hex colors.

- Red: #f00;
- Orange: #ffa500;
- Yellow: #ff0;
- Green: #00bc3f;
- Blue: #06f;
- Indigo: #8a2be2;
- Violet: #d300c9

With these colors all we have to do next is select each div individually. That is a perfect use for ids since they're meant to style one specific element only. That means we'll need to add an id for each div, so a logical name for each div would be the color that they have to be. It could be something random, but good names make for semantic code. Let's give the outer most div the id red. We'll do this like so:

```html
<div id="red">
  ...
</div>
```

To give that id some CSS attributes we'll go into main.css, select the id, and mark its color as red like this.

```css
#red {
  /* this selects any elements with the red id */
  border-top-color: #f00;
}
```

Take a stab at the other six to make a beautiful rainbow!

*Content derived from Flatiron School materials*
