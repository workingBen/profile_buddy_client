#= require views/base

namespace "PB.Views", (Views) ->
  class Views.SetUsername extends Views.Base
    events:
      'click .done': 'done'

    initialize: =>
      super

      @viewmodel = {}

      @render()

    done: ->
      # show loading spinner

      # post username to server (it will scrape and return the profile)
      username = $('.username').val()
      $.ajax "#{PB.config.serverUrl}/profile/scrape/#{username}",
        type: "POST"
        success: (data) ->
          console.log data
          debugger
          # create global profile model
          # redirect to profile page
        error: PB.makeErrorCb "Error creating profile for #{username}"
