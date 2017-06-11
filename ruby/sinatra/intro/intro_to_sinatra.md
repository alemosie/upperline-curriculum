# What is Sinatra?

## Overview

We'll introduce you to the concept of web frameworks and Sinatra in particular. You'll make sure Sinatra is installed in your computer and run a simple web application with it.

## Objectives

1. Differentiate between a website and a web application
2. Describe how Web Frameworks like Sinatra simplify web application development through common patterns and conventions
4. Install Sinatra on your computer
5. Run a basic Sinatra application

## What's a Web Framework?

> A web application framework (WAF) is a software framework that is designed to support the development of dynamic websites, web applications, web services and web resources. The framework aims to alleviate the overhead associated with common activities performed in web development. [Wikipedia](https://en.wikipedia.org/wiki/Web_application_framework)

Building dynamic web applications in any language is a complex job requiring intimate knowledge of hundreds of technologies and specifications. The good news, however, is that many of these requirements are universal and every web application must conform to these standards.

For example, any robust web application will need to handle request routing and provide a mechanism for the application to respond to different URLs with the appropriate response. Even a simple blog application has to handle a request to GET '/posts' to show all the recent blog posts vs a request to GET '/authors' to list all the authors.

Similarly, web applications require the ability to render templates to produce consistently structured dynamic content. A GET request to `/posts/1` must render the HTML for the first post just as a request to GET '/posts/2' will render identically structured HTML but with content for the second post. This is possible because of templates.

Web frameworks take all these routine and common requirements of any web application and abstract them into code and patterns that provide these functionalities to your application without requiring you to build them yourself.

Frameworks provide structure and libraries that allow you to focus on **your** application and not **applications in general**. The bigger the framework, the more you can rely on it to provide you with common needs. The smaller the framework, the more you'll have to build things yourself.

## What is Sinatra?

Sinatra is a Domain Specific Language implemented in Ruby that's used for writing web applications. Created by [Blake Mizerany](https://github.com/bmizerany), Sinatra is used by companies such as Apple, BBC, GitHub, LinkedIn, and more. (Check out this list of [companies using sinatra](http://www.sinatrarb.com/wild.html)!)

Essentially, Sinatra is nothing more than some pre-written methods that we can include in our applications to turn them into Ruby web applications.

Sinatra is considered a _light weight_ framework where the responsibility of app structure and communication falls solely on the developer. As such, it's a great way to dive in deep with the major concepts of MVC, a system for building web applications that governs 90% of the worlds' apps.

## The Sinatra DSL

Any application that requires the `sinatra` library will get access to methods like: `get` and `post`. These methods provide the ability to instantly transform a Ruby application into an application that can respond to HTTP requests.

## Basic Sinatra Applications

First, make sure Sinatra is installed by running `gem install sinatra` in your terminal.

The simplest Sinatra application would be:

File: `app.rb`

```ruby
require 'sinatra'

get '/' do
  "Hello, World!"
end
```


You could start this web application by running `ruby app.rb`. You'll see something similar to:

```
$ ruby app.rb
[2017-06-11 12:46:29] INFO  WEBrick 1.3.1
[2017-06-11 12:46:29] INFO  ruby 2.4.0 (2016-12-24) [x86_64-darwin16]
== Sinatra (v2.0.0) has taken the stage on 4567 for development with backup from WEBrick
[2017-06-11 12:46:29] INFO  WEBrick::HTTPServer#start: pid=42686 port=4567
```

This is telling us that Sinatra has started a web application running on your computer listening to HTTP requests at port `4567`, the Sinatra default. If you start this application and navigate to http://localhost:4567 you'll see "Hello, World!" in your browser. Go back to your terminal running the Sinatra application and stop it by typing `CTRL+C`. You should see:

```
Listening on localhost:4567, CTRL+C to stop
^CStopping ...
Stopping ...
== Sinatra has ended his set (crowd applauds)
[00:01:11] (wip-lesson) what-is-sinatra
$
```

This is the most basic Sinatra application structure and is actually pretty uncommon. More commonly, Sinatra is used in a modular style encapsulated by Controller Classes and booted via the `config.ru` Rack convention.
