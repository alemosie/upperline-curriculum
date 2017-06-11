# What is Object-Oriented Programming?

*This material is derived from [Learn.co](https://learn.co/lessons/instance-methods-readme-ruby)!*

>As humans, we’re constantly faced with myriad facts and impressions that we must make sense of. To do so, we must abstract underlying structure away from surface details and discover the fundamental relations at work. Abstractions reveal causes and effects, expose patterns and frameworks, and separate what’s important from what’s not. Object orientation provides an abstraction of the data on which you operate; moreover, it provides a concrete grouping between the data and the operations you can perform with the data—in effect giving the data behavior.  
>—[*Object-Oriented Programming with Objective-C*](https://developer.apple.com/library/ios/documentation/Cocoa/Conceptual/OOP_ObjC/Articles/ooOOP.html#//apple_ref/doc/uid/TP40005149-CH8-SW3), Apple Inc.

Object-Oriented Programming (OOP) gives us programmers the tools to build relationships into our code. Thus far, we've learned about data (e.g. strings, integers) and methods (actions on that data). However, we've yet to encounter a way to organize our code so that data and methods that belong together -- like a specific type of car and the action of moving forward -- can exist in a single block of code. That's where objects come in!

Objects in Ruby have two main purposes:
1. Bundle together individual pieces of data that represent a "thing"
2. Bundle customized functions that can be performed on the data associated with the object

An object in code is a thing with all the data and all the logic required to complete a task. Objects are models and metaphors for the problems we solve in code.

Object-oriented programming was born from the trend of making digital lives reflect our real lives. In the 1970's, [Adele Goldberg](https://en.wikipedia.org/wiki/Adele_Goldberg_%28computer_scientist%29) and [Alan Kay](https://en.wikipedia.org/wiki/Alan_Kay) developed an object-oriented language at Xerox PARC called SmallTalk, which was used in the first personal computer.

# Classes and Instances

## Defining a class

Let's say we are building a dog walking app. Our app's users might be dog walkers and dog owners and they can use the app to manage the dog walks. Such an app would need to store information about a potentially large number of dogs.

Our program needs to have a way to bundle up and operate on all the information about a particular dog. And, our program needs to be able to do this again and again. And, once more, we'll need our program to be able to create *new* bundles of information regarding individual dogs every time a new dog is added to the app.

How can we tell our Ruby program to deal with these dogs? Well, we can write a `Dog` class that produces individual dog objects, each of which contains all the information and behaviors of an individual dog.

Think of a class like the blueprint that defines how to build an object.  The `Dog` class is different from an individual dog just as the blueprints that show how to build a house are not the actual house. A Ruby class both contains the instructions for creating new objects and has the ability to create those objects. Calling `.new` on the `Dog` class is like getting a brand new dog object from an assembly line which produces a series of similar dog objects based on the same `Dog` template.


Here's what our `Dog` class would look like:

```ruby
class Dog
  # some code to describe a dog
end
```

The `Dog` class is defined with the `class` keyword, followed by the class name and closed with an `end`. The body of this class is between the `class` and `end` keywords.

Class names begin with capital letters because they are stored in Ruby constants. If your class name contains two words, the name should be CamelCased, like this:

```ruby
class MyClass
  # some code all about your awesome class
end
```

With this code alone, we can now make new dogs!

## Creating instances of classes

```ruby
class Dog
end

fido = Dog.new
fido #=> #<Dog:0x007fc52c2d7d20>
```

In the code sample above, once we've defined our `Dog` class with the `class` keyword, we immediately can bring to life new individual dogs, the variable `fido` which points to a new instance of a dog.

On the `Dog` class, we call the `.new` method and that will **instantiate** a new dog.

**Instantiate** means bringing a new object to life, a new individual, like a particular dog, like Snoopy or Lassie or Rover. Each particular dog is an individual that was **instantiated** when we called `Dog.new` to birth it into our world of programming.

We call these individuals, each specific dog or version of our class, **instances**. An **instance** is a single occurrence of an object. **Instances** refer to the individual objects produced from the class.

```ruby
class Dog
end

fido = Dog.new
fido #=> #<Dog:0x007fc52c2d7d20>

snoopy = Dog.new
snoopy #=> #<Dog:0x007fc52c2d4170>
```

`snoopy` and `fido` are two different variables pointing at separate instances of the `Dog` class.

### Different instances are different objects

Let's make three dogs:

```ruby
class Dog
end

fido = Dog.new
fido #=> #<Dog:0x007fc52c2d7d20>

snoopy = Dog.new
snoopy #=> #<Dog:0x007fc52c2d4170>

lassie = Dog.new
lassie #=> #<Dog:0x007fc52c2cc588>
```

Notice that every time you make an instance of a class, Ruby tells you that the return value is something that looks like `#<Dog:0x007fc52c2cc588>`. This syntax is called Ruby Object Notation and it's just the default way that Ruby communicates to you that you are dealing with an object or instance of a particular class. The `Dog:0x007fc52c2cc588` tells you that the object is an instance of `Dog` and the `0x007fc52c2cc588` is called its object identifier and it basically means this is where the object lives inside your computer.

Each of these instances are totally unique, even though they are all born from `Dog`.

```ruby
class Dog
end

fido = Dog.new
fido #=> #<Dog:0x007fc52c2d7d20>

snoopy = Dog.new
snoopy #=> #<Dog:0x007fc52c2d4170>

snoopy == fido #=> false - these dogs are not the same.
```

Classes are the blueprints that define the behavior and information our objects will contain. They let us manufacture and instantiate new instances.

## Adding actions to your objects

How do we add our own methods to our classes? In our Dog example, can we teach our Dog a new trick? Can we teach our Dog to bark for example?

We can. We're used to defining methods already with the `def` keyword. If we place this method definition within the body of a class, that method becomes a specific behavior of instances of that class, not a generic procedure we can just call whenever we want.

We call the methods defined within the object's class **Instance Methods** because they are methods that belong to any instance of the class.

```ruby
class Dog
  # Class body

  # Instance Method Definition
  def bark
    puts "Woof!"
  end
end

fido = Dog.new
fido.bark #> "Woof!"
```

By defining `#bark` within the `Dog` class, `bark` becomes a method of all instances of Dogs. If we make more dogs, they can all bark.

```ruby
class Dog
  def bark
    puts "Woof!"
  end
end

fido = Dog.new
fido.bark #> "Woof!"

snoopy = Dog.new
snoopy.bark #> "Woof!"
```

Objects can only do what we teach them to do via the code we write and the methods we define. For example, currently, Dogs do not know how to sit.

```ruby
class Dog
  def bark
    puts "Woof!"
  end
end

fido = Dog.new
fido.bark #> "Woof!"
fido.sit # NoMethodError: undefined method `sit' for #<Dog:0x007fa4e9a9e8a0>
```

In the same manner, instance methods, the methods that belong to particular instances of particular classes, are not globally evocable like procedural methods. They cannot be called without an instance.

```ruby
class Dog
  def bark
    puts "Woof!"
  end
end

fido = Dog.new

# Let's try just calling bark without fido
bark # NameError: undefined local variable or method `bark' for main:Object
```

### Classes as Blueprints

The ability to define methods and behaviors in our classes for our instances makes Ruby classes behave not just as factories, capable of instantiating new individual instances, but also as a blueprint, defining what those instances can do.
