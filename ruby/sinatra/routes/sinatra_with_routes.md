# Sinatra + Routes

<a href='https://learn.co/lessons/sinatra-routes-readme' data-visibility='hidden'>*Material by the Flatiron School*</a>

## What are Routes?

Every time a person clicks on a link, types in a URL, or submits a form, they are making HTTP requests to a specific URL on your application. Routes are the part of an application that connect HTTP requests to a specific method in your application code built to handle responding to such a request (that part of code is called a `Controller Action`).

Users interact with our application by requesting specific URLs via HTTP. URLs are the interface to a web application.

How does our application know what to show a user based on the web request they sent? Through the routes we program in our application. Being able to draw a route in a web application to respond to an HTTP request is the absolute first step in building anything on the web.

In Sinatra, a route is constructed by pairing an HTTP method/verb, like `GET` or `POST` with a URL-matching pattern, i.e. a string that matches what users type in to their browser when they want to visit our webpage. We'll see an example in just a moment.

### In context: Spaghetti alla puttanesca

Let's say we're building a simple application for cooking [**Spaghetti alla puttanesca**](https://en.wikipedia.org/wiki/Spaghetti_alla_puttanesca).

As the chef, you need an easy way to look up the following:
1. What ingredients are necessary for the recipe
2. Instructions on how to cook the recipe

When you go to your home page, you see two links: `Ingredients` and `Instructions`. When you click on the `Ingredients` link, the following happens:
* Your url changes to http://127.0.0.1:9393/ingredients
* The url triggers a GET request (`GET /ingredients`) to the application to retrieve the information we've associated with the "ingredients" url, an HTML page (called a template) that contains the ingredient list
* The server (our application) sends back the ingredients template for us to view

This mapping between the "ingredients" url extension and the HTML template is called a `route`.

## Using the Controller to build routes

Our Sinatra application needs to match the `GET /ingredients` request to a route that is defined in a `controller` -- the hub for all of your request/response activity. It's the brain of your application that takes in inputs from the user (a request for a page, for example), and outputs the appropriate response.

The matching route for `/ingredients` defined in the controller looks like this:

```ruby
get '/ingredients' do

end
```

Once the request has been matched to the route in the controller, called the **controller action**, then it executes the code inside of the controller action's block, as shown below:

```ruby
# app.rb

get '/ingredients' do
  erb :'ingredients'
end
```

Let's run through this specific scenario one more time:

1. The HTTP request verb, `GET` matches the `get` method in our controller. The `/ingredients` path in the HTTP request matches the `/ingredients` path in our controller method. Yay! We've successfully matched the request to a controller action!

2. Once our app has found its match, it will run the code in the block that accompanies the route. In this case, the block will `render` (the term for "show the user") the contents of the `ingredients.html.erb` file at `views/ingredients.html.erb`.

3. If no matching route for the web request is found, our application will respond with a 404 informing the user's browser that our application cannot find a match for that request URL.

#### Advanced concepts introduced: ERB & MVC
* `ERB` is HTML + Ruby code in one -- very handy for dynamic web pages whose content changes based on certain inputs! For now, your ERB page is just going to look like HTML.
* We keep all of our ERB templates in a folder called `views` because of the Model-View-Controller paradigm that Sinatra uses. We've gone over controllers... next week we'll go over models and views :)

## Lab & Resources

Download the `basic_routes_lab` zip to get started!

- [Routes in Sinatra](http://www.sinatrarb.com/intro.html#Routes)
