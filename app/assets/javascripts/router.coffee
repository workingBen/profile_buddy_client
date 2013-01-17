namespace "PB", (PB) ->
  class PB.Router extends Backbone.Router
    routes:
      "": "signup"
      "set_username": "setUsername"
      "profile/:id": "profile"

    signup: ->
      new PB.Views.Signup()

    setUsername: ->
      new PB.Views.SetUsername()

    profile: (id) =>
#     PB.profiles.get('id')
#     profiles = new PB.Collections.Profiles
#       username: username

      new PB.Views.Profile
        model: PB.currentProfile
#       collection: profiles
