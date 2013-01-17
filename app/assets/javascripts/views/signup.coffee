#= require views/base

namespace "PB.Views", (Views) ->
  class Views.Signup extends Views.Base
    events:
      'click .facebook-connect': 'facebookConnect'

    facebookConnect: ->
      console.log "signing up with Facebook, yo!"
      PB.redirectTo "set_username"
