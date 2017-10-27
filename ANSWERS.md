# Q0: Why is this error being thrown?
We haven't created a model for Pokemon yet and no database exists for it yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They are appearing from the home index view when @pokemon is called. Which comes from home_controller index method which sets @pokemon to trainerless_pokemon.sample which is random.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The capture_path(id: @pokemon) looks in the routes file for a capture_path whose request is a patch request. Then it passes the pokemon to the pokemon controller's capture method since the route told it to go there.

# Question 3: What would you name your own Pokemon?
Yoohoo, like the chocolate milk.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I redirected to the trainer_path with a patch request, the path needed the trainers id.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
application.html.erb renders layouts/messages on every single page, and within layouts/messages it displays all flash messages. In our case our message passed into flash is @pokemon.errors.full_messages.to_sentence.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
