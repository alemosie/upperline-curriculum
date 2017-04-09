# Command Line Calculator

*This lab was derived from materials by [Upperline School of Code](https://github.com/learn-co-students/upperline-hs-ruby-group-project-upperline-lmhq-071116).*

Over the course of 2-3 sessions, you're going to build a command line calculator!

We're using the term "calculator" here in the broadest sense. Your goal is not necessarily to build a program that adds, subtracts, multiplies, and divides two numbers like the simple calculators you'd find on your desk (though you can do that too!). Instead, think about different areas of life that require some sort of calculation. For example:

- **Currency calculator**: How much does something cost in a foreign country?
- **Planetary weight calculator**: How much do you weigh on, say, Jupiter?
- **Trip duration calculator**: How long will your road trip take between certain cities?
- **Tip calculator**: How much should you tip at dinner?

Don't be afraid to get creative! :)

## The Approach

### Step 1: Plan out your features

You should spend the first 5 minutes away from your laptop, mapping out the features you want to build and how you want a user to use your calculator. Some things to think about:

1. Do you want a basic calculator or do you want it themed?

2. Do you want your user to enter a math problem like you would write it on paper (1 + 1) or do you want to take in each piece of data individually?

3. Do you want your user to enter a + or add or addition or all three?

4. What math problems do you want to solve?

### Step 2: Pseudo Code

Once you have the big ideas settled, try using pseudo code to plan out the methods you will want for your calculator. As an example, if we were building a method that is supposed to add a city to a list of cities it might look like this:

```ruby
def add_city(city, list_of_cities)
  add a city to a list or array of cities
end
```

You already know how to do this with an array. So why write out pseudo code -- shouldn't you just write out the solution now? Well, if you didn't know how to do something, writing out what you want the method to look like allows you to focus on what you are going to build so that writing the actual code becomes a separate step.

When writing pseudo code, you don't have to know the code you will use right away. Focus on describing the action you want the method to perform.

#### First MVP, then beyond!

As you design your application, keep in mind the term "Minimum Viable Product," or MVP. MVP is the smallest program you can build that offers value to the user. That is, make an app that has the minimum amount of features while offering a usable product. In terms of a calculator, maybe your app will only allow users to make calculations with the basic math operations. You might not want to include trig functions like cosine or the square root function in the MVP.

Every design decision has a trade-off. Focusing on one thing means you won't have time to focus on another.


### Step 3: Code your solution!

Once you have all of your methods mapped out, fill them in with Ruby code.

Don't forget to push up to your GitHub repository every time you make progress on the application -- you don't want to lose your work!
