### Methods that use Ruby to create html!

def create_title(title)
  title_html = "<center><h1>#{title}</h1></center><hr>"
  title_html
end

def add_image(image_url)
  image_html = "<br><center><img src='#{image_url}'/></center><br>"
  image_html
end

def set_background_color(color)
  background_html = "<body bgcolor='#{color}'>"
  background_html
end

def create_bulleted_list(list_items)
  list_start = "<ul>"
  list_middle = ""
  list_end = "</ul>"

  for item in list_items
    list_item_html = "<li>#{item}</li>"
    list_middle += list_item_html
  end

  list_start + list_middle + list_end
end

def create_numbered_list(list_items)
  list_start = "<ol>"
  list_middle = ""
  list_end = "</ol>"

  for item in list_items
    list_item_html = "<li>#{item}</li>"
    list_middle += list_item_html
  end

  list_start + list_middle + list_end
end

def create_section(section_title, section_text)
  section_title_html = "<h2>#{section_title}</h2>"
  section_text_html = "<p>#{section_text}</p>"
  section_title_html + section_text_html
end

def add_free_text(text)
  free_text_html = "<p>#{text}</p>"
  free_text_html
end

def create_link(link_text, link_url)
  link_html = "<p><a href='#{link_url}'>#{link_text}</a></p>"
  link_html
end


## TODO: Generate an html page!

### Here's an example one:
background = set_background_color("orange")
title = create_title("The Otter: Glorious Creature")
image = add_image("http://dailyotter.org/wp-content/uploads/2013/04/8642805643_320e699057_o-650x529.jpg")
section_1 = create_section("Terminology", "There are many specific words associated with otters.")
bullets = create_bulleted_list(["An otter's den is called a holt or couch",
  "Male otters are called dogs or boars",
  "Female otters are called sows",
  "Offspring are called pups"])
text_1 = add_free_text("The collective nouns for otters are:")
numbers = create_numbered_list(["Bevy", "Family", "Lodge", "Romp", "Raft (when in the water)"])
link = create_link("Click here for more information about otters!", "https://en.wikipedia.org/wiki/Otter")
image_2 = add_image("https://68.media.tumblr.com/6a7fe9f5cd2e862d26aa1b7946f597ea/tumblr_nxgmbuKAr61qao4azo1_500.jpg")

### Create your html file
File.open("your_page.html", 'w') do |file|
  # TODO: for every variable you define, make sure you call it here
  file.write(background)
  file.write(title)
  file.write(image)
  file.write(section_1)
  file.write(bullets)
  file.write(text_1)
  file.write(numbers)
  file.write(link)
  file.write(image_2)
end
