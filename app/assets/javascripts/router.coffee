namespace "PB", (PB) ->
  class PB.Router extends Backbone.Router
    routes:
      "": "signup"
      "set_username": "setUsername"
      "profiles/:id": "profile"

    signup: ->
      new PB.Views.Signup()

    setUsername: ->
      new PB.Views.SetUsername()

    profile: (id) =>
      unless PB.currentProfile
        PB.currentProfile = new PB.Models.Profile(id: id)
        PB.currentProfile.fetch()
#     PB.profiles.get('id')
#     profiles = new PB.Collections.Profiles
#       username: username

      new PB.Views.Profile
        model: PB.currentProfile
#       collection: profiles
