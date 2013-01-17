#= require views/base

namespace "PB.Views", (Views) ->
  class Views.Signup extends Views.Base
    events:
      'click .facebook-connect': 'facebookConnect'

    initialize: =>
      super

      @viewmodel = {}

      @render()

    facebookConnect: ->
      console.log "signing up with Facebook, yo!"
      PB.redirectTo "invite_friends"
