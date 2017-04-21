class Chatti.Message
  constructor: ->
    @chatForm = $('form.new_message')
    @chatSubmit = @chatForm.find('input[type=submit]')
    @chatInput = @chatForm.find('input[type=text]')
    @preventBlanks()
    @setupSubmit()

  enableForm: ->
    return if @blankInput() or @blankName()
    @chatSubmit.prop("disabled", false)

  disableForm: ->
    @chatSubmit.prop("disabled", true)

  preventBlanks: ->
    @disableForm()
    @chatInput.on 'keyup', (e) =>
      if @blankInput() then @disableForm() else @enableForm()

  blankInput: ->
    @chatInput.val() is ''

  blankName: ->
    Chatti.users.blankName()

  setupSubmit: ->
    @chatForm.on 'submit', (e) =>
      e.preventDefault()
      Chatti.chat.speak @chatInput.val()
      @chatInput.val('')
