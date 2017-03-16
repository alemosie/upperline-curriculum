# Ruby Methods Review: Line Race!

- Jump to [methods review](#methods)
- Jump to [Line Race](#time-for-line-race)

In this lesson, we're going to practice writing Ruby methods. You can think of methods like *little machines* that follow this pattern:

1. You input information (an argument) -- though sometimes the method can do an action without any extra info!

2. The method churns and churns, performing some action on the information to transform it into a new value.

3. The method outputs the newly transformed value!

Methods define a new thing that your program can do. Whereas variables are a mechanism to teach your Ruby program about data; methods teach your Ruby program about a new routine or behavior it can use. Variables are like the nouns of Ruby, and methods are like the verbs!

## Methods

### Step 1: Def/ine it
The bones of a Ruby method are the "def" and "end": those two keywords tell Ruby where you're **def**-ining a new action!

```ruby
def ________
  # action code here
end
```

### Step 2: Give it a name

Once you have your bones, you need to give your new machine a name! The name you choose should describe the action that you're performing. Think of it like the "TL;DR" of your method.

```ruby
def say_hello
  # action code here
end
```

### Step 3: Tell it what to do

Now that you have the structure of your method, you need to add the filling -- the Ruby code that tells the method what action to do. (This is the fun part!) 

```ruby
def say_hello
  puts "Hello, world!" # print "Hello, world" to the terminal
end
```

### Step 4: Call the machine into action

Now that you'll fully defined the method, try running the file in your terminal (`ruby _____.rb`). Nothing happens! That's because we've created the *blueprints* for the machine, but haven't actually told it to do anything. It's like building a computer, but not hitting the power button.

To execute the action you've created, you need to **call** the method -- a term here that means "tell the machine to run." You call a method by its name, like so: 

```ruby
say_hello
```
Call the method anywhere in the file after you define the method. Run your Ruby file again -- you should see `"Hello, world!"`printed to your terminal!


### Step 4: Add arguments to your method if needed

Our `say_hello` method works great right now, printing `"Hello, world!"` to the terminal. But what if instead of "Hello, world," we want to say hello to a person? Consider the code below:

```ruby
person = "Alex"

def say_hello_to_someone
  puts "Hello, #{person}!" 
end

# we're interpolating the variable "person" into the string "Hello ____" -- more on interpolation in Resources
```

If you try to run this code, you get the following error: 
> `NameError: undefined local variable or method 'person' for main:Object`. 

Our method can't find the "person" variable!

Not to fear -- there's an easy way to fix this. We need to **pass in** "person." The variable is defined outside of the method, but we haven't told `say_hello_to_someone` that "person" exists. Think of the `def` and `end` as a moat around your method. You need to create a bridge to let your variables in; otherwise, they'll be stuck on the outside!

So, we'll the argument "person" to our method by putting parentheses and the name of the variable next to the method name:

```ruby
person = "Alex"

def say_hello_to_someone(person)
  puts "Hello, #{person}!" 
end
```
Let's call `say_hello_to_someone` like we called `say_hello`:

```ruby
say_hello_to_someone
```

Hey! There's an error: `ArgumentError: wrong number of arguments (0 for 1)`. That's because we haven't called the method with the necessary information -- the person.

Let's try it again, this time with the argument:

```ruby
person = "Alex"

say_hello_to_someone(person)
```

We get back, "Hello, Alex!"


#### IMPORTANT: variable and argument names don't have to be the same

This is important! In the above example, we passed an argument called "person" to the method `say_hello_to_someone`, and then called the method with the data stored in the variable "person." But what you have multiple people that you want to greet?

```ruby
alex = "Alex"
mike = "Mike"
```
We want to greet both Alex and Mike, so we do the following:

```ruby
def say_hello_to_someone(person)
  puts "Hello, #{person}!" 
end

say_hello_to_someone(alex)
say_hello_to_someone(mike)
```

You should see both "Hello, Alex!" and "Hello, Mike!" print to the terminal! 

How does Ruby know that `alex` is `person`? Because in `say_hello_to_someone`-land, any data that's passed in -- in this case, the string "Alex" in the `alex` variable, or the string "Mike" in the `mike` variable -- is labeled as `person`. Within the method, `person = "Alex"` or `person = "Mike"`.

Why is this so great? Because we can pass any string into `say_hello_to_someone`, and the machine will always work and spit out the desired result!

#### Multiple arguments

Now, we're going to change our `say_hello_to_someone` method to greet two people, instead of one.

When you have multiple arguments, you separate each argument name by a comma, like so:

```ruby
alex = "Alex"
mike = "Mike"

def say_hello_to_two_people(person_1, person_2)
  puts "Hello, #{person_1} and #{person_2}!" 
end

say_hello_to_two_people(alex, mike)
```

Output is "Hello, Alex and Mike!"

## Time for Line Race!

Now that you have methods down, let's practice your skills in the "Line Race" lab. 

The instructions and skeleton (i.e. some predefined methods) are in `line_race_lab.rb`.


## Resources

- [String Interpolation](http://ruby-for-beginners.rubymonstas.org/bonus/string_interpolation.html)
- [Methods on TutorialPoint](https://www.tutorialspoint.com/ruby/ruby_methods.htm)


