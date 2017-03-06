# Enumerators: Beyond `.each`

## Introduction

[Enumerators](http://ruby-doc.org/core-2.2.2/Enumerable.html) allow for iterative actions on data structures, specifically over arrays and hashes.

Enumerator methods allow us to iterate over every member of a collection and *do something to each* member of that collection.

We've already seen what `.each` can do -- let's explore new enumerators with some fancy functionality!

## `.collect` & `.map`

The `.collect` and `.map` methods are identical in functionality, and are similar to `.each` with one distinct difference: when you call `.collect` or `.map` on an array or hash a *new* array or hash object is returned, *not* the original one.

Let's take a look:

```ruby
cool_nums = [1, 2, 3]

def change_nums(nums)
  nums.collect do |x|
    x + 1
  end
end

change_nums(cool_nums)
#=> [2, 3, 4]
```

However, the original array does not change:

```ruby
cool_nums
#=> [1, 2, 3]
```

## `.each` vs. `.collect`

While these two are similar, there are times when it makes sense to use one over the other. If you need the return value of your method to be a collection that's been modified by what's happening within the block, then `.collect` is for you. Of course, it's quite possible to work with `.each` to accomplish that. One way is to make a new "placeholder" (array or hash) in memory and within the method definition, and then return that new placeholder as the last line of the method:

```ruby
cool_nums = [1, 2, 3]

def change_nums(nums)
  new_count = []
  nums.each do |x|
    x += 1
    new_count << x
  end
  new_count
end

change_nums(cool_nums)
#=> [2, 3, 4]
```

But doesn't this code smell a little bit? It's a lot of lines to accomplish something that `.collect` does itself.

## `.select`

The `.select` method returns a new collection containing all of the elements in the submitted collection for which the block's conditional is `true`:

```ruby
cool_nums = [1, 2, 3, 4, 5]

def even_nums(nums)
  nums.select do |x|
    x.even?
  end
end

even_nums(cool_nums)
#=> [2, 4]
```

## `.find`

The `.find` method is very similar to `.select`, but instead of collecting and returning all of the items for which a condition is `true`, `.find` returns only the *first* item for which it is `true`.

```ruby
[1, 3, 5, 7].find do |num|
  num.odd?
end
  => 1
```

## `.delete_if`

The `.delete_if` method, on the other hand, will delete from the collection any items that return `true` for a certain condition:

```ruby
[1, 2, 4, 7].delete_if do |num|
  num.odd?
end

  => [2, 4]
```
## `.include?`

You can use the `.include?` method to determine if a collection contains a specific element.

```ruby
[1, 2, 3].include?(1)
  => true

[1, 2, 3].include?(4)
  => false
```

## `.any?`

Calling `.any?` on a collection will return `true` if the code in the block (code between the `do`...`end` keywords or between the `{ }` "curly braces") evaluates to `true` for *any* element in the collection. Let's take a look:

```ruby
words = ["are", "any", "of", "these", "words", "longer", "than", "four", "letters"]

words.any? do |word|
  word.length > 4
end
  #=> true
```

The `.any?` method passes each element of the array it is called on to the code in between the `do`...`end` keywords. The length of each word gets compared to `4`. Since there are two words in this collection that are longer than four letters, the line containing `word.length > 4` returned `true` for those two words. Therefore, the entire method call of `.any?` on the array will return `true`.

## Resources
* [Ruby Docs on Enumerators](http://ruby-doc.org/core-2.2.2/Enumerable.html)
