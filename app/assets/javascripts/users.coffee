class Chatti.Users
  constructor: ->
    @cookieName = 'current_user'
    @setName()
    @storeNameOnBlur()

  currentUser: ->
    Cookies.get(@cookieName)

  setName: ->
    $('#name').val(@currentUser()) if @currentUser()

  storeNameOnBlur: ->
    $('#name').on 'blur', (e) =>
      name = $(e.currentTarget).val()
      if name?.length
        Cookies.set(@cookieName, name)
      else
        Cookies.remove(@cookieName)
