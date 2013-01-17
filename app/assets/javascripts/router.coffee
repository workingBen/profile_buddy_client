namespace "PB", (PB) ->
  class PB.Router extends Backbone.Router
    routes:
      "": "signup"
      "set_username": "setUsername"
#     "profile/:id" "profile"

    signup: ->
      new PB.Views.Signup()

    setUsername: ->
      new PB.Views.SetUsername()

#   profile: (id) =>
#     profiles = new PB.Collections.Profiles
#       profile_id: id

#     new PB.Views.Profile
#       collection: profiles
