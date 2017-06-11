# Basic HTML style tags

This is a list of some of the more common HTML tags you'll encounter when creating HTML web pages. Here's a [resource](https://computerservices.temple.edu/commonly-used-html-tags) if you want more!


### Adding an image

```html
<img src='https://tinyurl.com/n4v8gvu'/>
```

"Img" stands for "image" -- it lets you put images from the internet onto your page.

### Divs

The `<div>` tag defines a division or a section in an HTML document. It's used to group block elements. By default, browsers always place a line break before and after the `<div>` element.  Right now it may seem a little unnecessary, but it's really handy when we start adding styling our HTML page with CSS.

Here's a div tag in action:

```html
<!-- Based off of https://en.wikipedia.org/wiki/Otter-->
<div id="table-of-contents">
  <a href="#Etymology">Etymology</a> //
  <a href="#Terminology">Terminology</a> //
  <a href="#Life_cycle">Life cycle</a>
</div>
```


## Manipulating text

### Text tags

```html
<p></p>
```

The `<p>` tag is for "paragraph." It wraps the text in line breaks so that the text stands out.


```html
<span></span>
```

The span text is for text that's inline -- there are no line breaks around the text.

If you need a line break, you can always use the `<br>` tag to manually add space.

### Headers

Header tags are used for -- you guessed it -- headings. They always have an "h" in front, like so:

```html
<h1></h1>
```
The `<h1>` tag is used for main headers of pages. It denotes a much bigger font than the regular text on your page.

There are also `<h2>`, `<h3>`, `<h4>`, `<h5>`, and `<h6>` tags. The font gets progressively smaller as the numbers get bigger.

Think of headers like the section headers of this README. Your h1 would be "Otter Nonsense," since that's the biggest font. h2 would be "What is HTML?," and so on.


### Formatting

* The `<b>` tag specifies bold text.
* The `<i>` tag specifies italic text.
* The `<u>` tag specifies underline text.

### Lists

There are two types of lists: **ordered** and **unordered**. The difference? Ordered lists have numbers, while unordered lists have bullets.

```html
<ol>
  <li>bevy</li>
  <li>family</li>
  <li>lodge</li>
  <li>romp (being descriptive of their often playful nature)</li>
  <li>raft (when in the water)</li>
</ol>
```

An ordered list starts with the `<ol>` tag. Each list item starts with the `<li>` tag.

```html
<ul>
  <li>An otter's den is called a holt or couch</li>
  <li>Male otters are called dogs or boars</li>
  <li>Female otters are called sows</li>
  <li>Offspring are called pups</li>
</ul>
```

An unordered list starts with the `<ul>` tag. Like the ordered list, each list item starts with the `<li>` tag.

For more information and examples of lists in html, visit [here](https://www.w3schools.com/html/html_lists.asp).

### Links

The "href" in this tag stands for "hyperlink reference," which makes sense because HTML links are hyperlinks -- that's how the internet works! Link tags allow you to click on a link and jump to another place (a destination with an address). When you move the mouse over a link, the mouse arrow will turn into a little hand.

The href attribute specifies the destination address of the link.

```html
<!-- External link -->
<a href='https://en.wikipedia.org/wiki/Otter'/>
```

For an **external** link, the destination address should be a full URL or with a path relative to the current web page.

```html
<!-- Internal link -->
<div id="hello-otter">
    Hello, otter!
</div>

<a href='#hello-otter'/>
```

For an **internal** link, the destination address should correspond to an "id" assigned to another tag: usually a `<div>` tag. The address is the id name ("hello-otter") preceded by a "#".



<br>


### Bonus: Changing color

You change the color of text on the page by using the `style="color:COLOR"` tag element. The color you give your tag can either be in [hex](https://www.w3schools.com/colors/colors_hexadecimal.asp), [rgb](https://www.w3schools.com/colors/colors_rgb.asp), or [name](https://www.w3schools.com/colors/colors_names.asp).

```html
<html>
  <body>
    <p style="color:rgb(255,0,0)">To be</p>
    <p style="color:#d02de2">or not to be</p>
    <p style="color:blue">that is the question</p>
  </body>
</html>
```
