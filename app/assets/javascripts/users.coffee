class Chatti.Users
  constructor: ->
    @cookieName = 'current_user'
    @nameInput = $('#name')
    @setName()
    @storeNameOnBlur()

  currentUser: ->
    Cookies.get(@cookieName)

  setName: ->
    if @currentUser()
      @nameInput.val(@currentUser())
    else
      Chatti.message.disableForm()

  storeNameOnBlur: ->
    @nameInput.on 'blur', (e) =>
      name = $(e.currentTarget).val()
      if name?.length
        Cookies.set(@cookieName, name)
        Chatti.message.enableForm()
      else
        Cookies.remove(@cookieName)
        Chatti.message.disableForm()

  blankName: ->
    $('#name').val().length is 0