#= require views/base

namespace "PB.Views", (Views) ->
  class Views.InviteFriends extends Views.Base
    events:
      'click .done': 'done'

    initialize: =>
      debugger

      super

      @viewmodel = {}

      @render()

    done: ->
      console.log "sweet, you just invited your friends and entered your okcupid username"
      # show loading spinner
      # post username to server (it will scrape and return the profile)
      # new profile from response
      # redirect to new profile
