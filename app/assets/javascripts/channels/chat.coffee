Chatti.chat = Chatti.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#messages').prepend data['message']

  speak: (message) ->
    @perform 'speak', message: message
