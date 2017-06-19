# HTML Forms and Params

## Forms, Forms, Forms!

Think about how many forms you fill out online every day. Credit card payments, logins, registration forms, and even Google searches are all examples of forms. That's because forms are the most common way for users to pass data to a web application.

Here, we'll connect HTML forms to a Sinatra application by building a form that takes a user's name and favorite food and returns an interpolated string. For example, if the name were "Sam" whose favorite food is "Green Eggs and Ham," we will get an interpolated string of "My name is Sam, and I love Green Eggs and Ham."

Feel free to code along!

#### Form Review

We're not going to dive too deep into form-making here, but the basics are:

+  HTML forms need a `<form>` opening tag and a `</form>` closing tag.

+ Each form field (text, date, password, etc) has a tag (usually `<input>`) with an attribute `type` denoting the type of form field. For example, a text box field looks like this:

```html
<input type="text">
```

+ A form needs a submit button:

```html
<input type="submit">
```

That's all a basic form needs!

#### Our First Form

Let's build a form with two input fields: one for your name and one for your favorite food. We'll enclose our `<input>` tags in `<p>` tags so we can give them some textual context.

Put it all together and your HTML form will look like this:

```html
<form>
  <p>Your Name: <input type="text"></p>
  <p>Your Favorite Food: <input type="text"></p>
  <input type="submit">
</form>
```

### Connecting the Form to your Sinatra App

If you try submitting the form, nothing will happen. That's because the form is not yet connected to our Application Controller in `app.rb`. There is nothing telling the form to send the user's data to our application.

In order to connect the form to our application, we need to give it explicit directions on **where** and **how** to send the data from the user. Both of these pieces of data are attributes that we give our `<form>` tag.

```
<form method="POST" action="/food">
```

+ The `method` attribute tells the form what kind of request should be fired to the server when the submit button is clicked. In general, forms use POST request, because it is 'posting' data to the server.

+ The `action` attribute tells the form what specific route the post request should be sent to. In this case, we're posting to a route called `/food`

Each form field `<input>` also must define a `name` attribute. The `name` attribute of an `<input>` defines how our application will identify each `<input>` data.

**Update the form to:**

```html
<form method="POST" action="/food">
  <p>Your Name:<input type="text" name="name"></p>
  <p>Your Favorite Food:<input type="text" name="favorite_food"></p>
  <input type="submit">
</form>
```

When we submit, though, we still get an error:

![Sinatra Error](http://s3.amazonaws.com/readme-pics/localhost_9393_food.png)

We get a Sinatra error! This is great news. Sinatra errors tell us exactly what we need to do next to make the form work.

## Post Routes and Params

The error message Sinatra gives us is telling us that we don't have a route to receive the data from the HTML form that we created in `food_form.erb`.

If you recall, we gave our form a method attribute of `POST` and an `action` attribute of `"/food"`. Again, this is the **how** and **where** the data goes from this form.

Every form also needs a corresponding route in the controller file (`app.rb`). Instead of a `get` route (which we used to route users to view an html page), we'll set up a post route:

```ruby
post '/food' do

end
```

Notice that both of the attributes from the form are covered in this route: The `method` `post` and the `action` `/food`. It's almost like a game of catch - the form is throwing the data to the server, which catches it by having the same receiving address (`/food`) and way of receiving the data (`post`).

All user submitted data will appear in a `params` hash accessible throughout our Sinatra controllers. The `name` attribute of an `<input>` corresponds to a key in the `params` hash for that data.

If you create a text field input with `<input type="text" name="favorite_food">`, whenever the user submits that form, you will be able to access the data entered into the Favorite Foods text box via `params[:favorite_food]`.

This is because we will be passing our data in the form of a hash, where the key will be the name of the data, and the value will be the data itself. In this case, we want our hash (which we call `params`) to look something like this:

```ruby
params = {
  :name => "Sam",
  :favorite_food => "Green Eggs and Ham"
}
```

So our input names will need to be `name` and `favorite food`

### Param I Am

The data from the form comes nicely packaged up in the form of a hash called `params`. Let's set the return value of the post route to be params.to_s, and see what our form does now...

```
post '/food' do
    params.to_s
  end
```

When you submit your form, you should now see the contents of `params` displayed as a hash in your browser like this:

```
{"name"=>"Sam", "favorite_food"=>"Green Eggs and Ham"}
```

Great! This means you've been able to successfully get the data from the form in to the controller, and can now manipulate it any way you want.

Let's use the key-value pairs in `params` to return the following phrase, using good-old string interpolation:

```
"My name is #{params[:name]}, and I love #{params[:favorite_food]}"
```

Here's the full post route and action in `app.rb`:

**In your controller, add:**

```
post '/food' do
  "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
end
```

When you submit the form now, everything should work!
