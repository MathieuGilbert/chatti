# README

This was a 1-day project to learn about ActionCable in Rails 5. I first built the chat app as a regular app, having to submit the form and reload the page to see the new messages. Plus the cookie username and disable/enable-based validation, which was a bit beyond the scope but fun to do! I then made use of some online resources to convert the app to use web sockets.

https://chatti-chat.herokuapp.com

Here's how the code works together to go from one user entering a message, and everyone's feeds getting a live update:

![ActionCable code map](/actioncable-explained.png?raw=true)
