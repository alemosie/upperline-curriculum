# Otter Nonsense!
*An introduction to HTML/CSS + practice using Ruby methods*

## What is HTML?

HTML stands for **Hypertext Markup Language**, and every single website on the internet is written in HTML. (Yes, that's right: every single one!) It provides the skeleton for websites and organizes the different elements on a page into categories like image, paragraph, and title. We're going to learn how to generate some of these structural elements today!

HTML has a specific syntax that's a bit different from Ruby, but you'll get a hang of it quickly. It's not too hard at all. :)

### HTML tags

HTML is written using **tags**: a fancy term for labeling pieces of content. For example, if you want to add a paragraph to your page, you would need a "p" tag, which looks like this:

```html
<p>YOUR PARAGRAPH HERE</p>
```

The first `<p>` is called the "opening tag", and the second `</p>` is called the "closing tag." (Notice that the closing tag is denoted by the extra `/`.) The text you want to be displayed on the page goes in the middle!

#### Tags used in this lesson

##### Header tags

Header tags are used for -- you guessed it -- headings. They always have an "h" in front, like so:

```html
<h1></h1>
```
The `<h1>` tag is used for main headers of pages. It denotes a much bigger font than the regular text on your page.

There are also `<h2>`, `<h3>`, `<h4>`, `<h5>`, and `<h6>` tags. The font gets progressively smaller as the numbers get bigger.

Think of headers like the section headers of this README. Your h1 would be "Otter Nonsense," since that's the biggest font. h2 would be "What is HTML?," and so on.

##### Text tags

```html
<p></p>
```

We're going to use the `<p>` tag in this lesson. As described above, the "p" stands for "paragraph!"

```html
<br>
```

HTML doesn't understand whitespace. This means that if in your HTML document you push return a bunch of times and have a lot of empty lines, your browser won't recognize those empty lines. Use `<br>` to manually create those white lines.

Note: `<br>` is one of the only tags that doesn't require a closing tag!

##### Image tag

```html
<img src='https://tinyurl.com/n4v8gvu'/>
```

"Img" stands for "image" -- it lets you put images from the internet onto your page!

##### Link tag

```html
<a href='https://en.wikipedia.org/wiki/Otter'/>
```

This one is a little tricky to remember. "href" stands for "hyperlink reference," which makes sense because HTML links are hyperlinks -- that's how the internet works! Link tags allow you to click on a link and jump to another document, or html page.

##### List tags

We're going to handle two types of lists here: **ordered** and **unordered**. The difference? Ordered lists have numbers, while unordered lists have bullets.

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


## Where does Ruby come in?

We're going to use Ruby methods to dynamically generate html for us! In `generate_html.rb`, I've created a number of methods that you can use to generate specific HTML syntax according to the tags above.

### TODO
Your mission is as follows:
- Properly **call each method** provided in the Ruby file at least once to build your own HTML page! (No, it doesn't *have* to be otter themed...)
- **Open the html file** in the browser using the terminal command `open name_of_file.html`. You have to inspect your handiwork!
