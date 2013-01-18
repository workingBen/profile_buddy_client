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
      unless PB.userBeingEditted
        PB.userBeingEditted = new PB.Models.User(username: username)
        PB.userBeingEditted.fetch()

      new PB.Views.User
        model: PB.userBeingEditted
