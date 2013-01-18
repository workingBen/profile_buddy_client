namespace "PB", (PB) ->
  class PB.Router extends Backbone.Router
    routes:
      "": "signup"
      "set_username": "setUsername"
      "users/:username": "user"

    signup: ->
      new PB.Views.Signup()

    setUsername: ->
      new PB.Views.SetUsername()

    user: (username) =>
      unless PB.currentUser
        PB.currentUser = new PB.Models.User(id: id)
        PB.currentUser.fetch()

      new PB.Views.User
        model: PB.currentUser
