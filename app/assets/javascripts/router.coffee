namespace "PB", (PB) ->
  class PB.Router extends Backbone.Router
    routes:
      "": "signup"
#     "profile/:id" "profile"

    signup: ->
      new PB.Views.Signup()

#   profile: (id) =>
#     profiles = new PB.Collections.Profiles
#       profile_id: id

#     new PB.Views.Profile
#       collection: profiles
