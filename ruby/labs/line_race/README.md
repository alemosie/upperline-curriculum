# Ruby Methods Review: Line Race!

In this lesson, we're going to practice writing Ruby methods. You can think of methods like *little machines* that follow this pattern:

1. You input information (an argument) -- though sometimes the method can do an action without any extra info!

2. The method churns and churns, performing some action on the information to transform it into a new value.

3. The method outputs the newly transformed value!

Methods define a new thing that your program can do. Whereas variables are a mechanism to teach your Ruby program about data; methods teach your Ruby program about a new routine or behavior it can use. Variables are like the nouns of Ruby, and methods are like the verbs!

## Elements in a Ruby method

### Step 1: Def/ine it
The bones of a Ruby method are the "def" and "end": those two keywords tell Ruby where you're **def**-ining a new action!

```ruby
def ________
  # action code here
end
```

### Step 2: Give it a name!

Once you have your bones, you need to give your new machine a name! The name you choose should describe the action that you're performing. Think of it like the "TL;DR" of your method.

```ruby
def print_hello_world
  # action code here
end
```

### Step 3: Tell it what to do!
