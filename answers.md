# Q0: Why is this error being thrown?
Because we don't have a controller for our Pokemon.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The seed file generates four pokemon in our database, Bulbasaur, Squirtle, Charmander and Pikachu, each with a random level between 1 and 20 but with no trainer id declared.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

The button_to method makes a button with "Throw a Pokeball!" over it. It then defers to the URL made by capture_path(id: @pokemon), which then points to the capture method in our pokemon controller. The next statement then chooses the button to be displayed as a medium sized button. The last statement overrides the default button_to method from a get request to a patch request, which means we will be altering just one part of our instance attribute.

# Question 3: What would you name your own Pokemon?
Personally, I don't like naming pokemon since they constantly say their own name and that pretty much always fits.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!
Not bad, I just wish the deadlines weren't set in stone as I don't always have time every week to complete each thing on time. Sometimes I worry about passing with my late assignments.
# Extra credit: Link your Heroku deployed app
