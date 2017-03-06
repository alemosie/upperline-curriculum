## Intermediate Enumerators Practice: Cartoon Collections

## Instructions

There are four methods to complete in this lab:

1. `summon_captain_planet`
2. `find_the_cheese`


#### Method 1 — `summon_captain_planet`

![captain-planet](https://s3-us-west-2.amazonaws.com/web-dev-readme-photos/cartoon-collections/captain-planet.jpeg)

This method should accept an array argument of planeteer calls that will look like this:

```ruby
planeteer_calls = ["earth", "wind", "fire", "water", "heart"]
```

It should then capitalize each element and add an exclamation point at the end. The return value of this method should be an array, in this example:

```
summon_captain_planet(planeteer_calls)
#=> ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
```

#### Method 2 — `find_the_cheese`

![dancing-mice](https://s3-us-west-2.amazonaws.com/web-dev-readme-photos/cartoon-collections/cheese.jpg)

The `find_the_cheese` method should accept an array of strings. It should then look through these strings to find and return the first string that is a type of cheese. The types of cheese that appear are  `"cheddar"`, `"gouda"`, and `"camembert"`.

For example:

```ruby

snacks = ["crackers", "gouda", "thyme"]
find_the_cheese(snacks)
#=> "gouda"

soup = ["tomato soup", "cheddar", "oyster crackers", "gouda"]
find_the_cheese(soup)
#=> "cheddar"
```

If, sadly, a list of ingredients does not include cheese, return `nil`:

```ruby
ingredients = ["garlic", "rosemary", "bread"]
find_the_cheese(ingredients)
#=> nil
```

You can assume that all strings will be lowercase. Take a look at the [`.include`](http://www.ruby-doc.org/core-2.2.0/Array.html#method-i-include-3F) method for a hint. This method asks you to return a string value instead of printing it so keep that in mind.

## Resources

* The [`.include` method](http://www.ruby-doc.org/core-2.2.0/Array.html#method-i-include-3F)
* The [`.each_with_index` method](http://ruby-doc.org/core-2.2.0/Enumerable.html#method-i-each_with_index)
* The [`.map` method](http://www.ruby-doc.org/core-2.2.0/Array.html#method-i-map), and this [SO](http://stackoverflow.com/a/12084555/2890716) post.

## Credits
Content derived from the Flatiron School, [here](https://github.com/alemosie/cartoon-collections-001-prework-web)
