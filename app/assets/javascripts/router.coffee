namespace "PB", (PB) ->
  class PB.Router extends Backbone.Router
    routes:
      "": "signup"
      "invite_friends": "inviteFriends"
#     "profile/:id" "profile"

    signup: ->
      new PB.Views.Signup()

    inviteFriends: ->
      new PB.Views.InviteFriends()

#   profile: (id) =>
#     profiles = new PB.Collections.Profiles
#       profile_id: id

#     new PB.Views.Profile
#       collection: profiles
